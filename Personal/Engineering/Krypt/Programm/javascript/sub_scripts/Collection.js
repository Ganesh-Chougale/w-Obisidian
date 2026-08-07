function createCustomCollection() {
  let csv = "srno,ascii,encrypted\n";

  for (let i = 0; i < harcodedAsciiChars.length; i++) {
    const char = harcodedAsciiChars[i];

    let value = prompt(`Enter encrypted symbol for: ${char}`);

    if (value === null) {
      return;
    }

    csv +=
      [
        String(i + 1).padStart(3, "0"),
        `"${char.replaceAll('"', '""')}"`,
        `"${value.replaceAll('"', '""')}"`,
      ].join(",") + "\n";
  }

  downloadCSV(csv);

  showToast("Created", "Custom collection downloaded");
}

function loadCustomCollection(results) {
  const rows = results.data;
  const errors = [];

  // Papa Parser errors
  if (results.errors.length) {
    errors.push(...results.errors.map((error) => error.message));
  }

  // Header validation
  const headers = results.meta.fields.map((header) =>
    header.trim().toLowerCase(),
  );

  if (
    headers.length !== 3 ||
    !headers.includes("srno") ||
    !headers.includes("ascii") ||
    !headers.includes("encrypted")
  ) {
    errors.push("Required columns: srno, ascii, encrypted");
  }

  const mapping = {};
  const reverse = {};
  const asciiUsed = {};

  // Ignore extra rows after 128
  if (rows.length > 128) {
    showToast("Warning", `${rows.length - 128} extra characters ignored`);
  }

  // Validate rows
  for (let i = 0; i < Math.min(rows.length, 128); i++) {
    const rowErrors = [];
    const rowNumber = i + 2;

    const srno = rows[i].srno?.trim();
    const ascii = rows[i].ascii;
    const encrypted = rows[i].encrypted?.trim();

    if (!srno && !ascii && !encrypted) {
      rowErrors.push(`Row ${rowNumber}: empty row is not allowed`);
    }

    // 1. srno validation

    const expectedSrno = String(i + 1).padStart(3, "0");

    if (srno !== expectedSrno) {
      rowErrors.push(`Row ${rowNumber}: srno must be ${expectedSrno}`);
    }

    // 2. ASCII validation

    const expectedAscii = harcodedAsciiChars[i];

    if (ascii !== expectedAscii) {
      rowErrors.push(`Row ${rowNumber}: ascii must match srno ${expectedSrno}`);
    }

    // Duplicate ASCII validation

    if (ascii && asciiUsed[ascii]) {
      rowErrors.push(`Row ${rowNumber}: duplicate ascii "${ascii}"`);
    }

    if (ascii) {
      asciiUsed[ascii] = true;
    }

    // 3. Encrypted validation
    if (!encrypted) {
      rowErrors.push(`Row ${rowNumber}: encrypted symbol is required`);
    } else {
      // Must contain exactly one unicode symbol
      if (Array.from(encrypted).length !== 1) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted must contain one symbol only`,
        );
      }

      // Cannot be English alphabet
      if (/^[A-Za-z]$/.test(encrypted)) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted symbol "${encrypted}" cannot be an English letter`,
        );
      }

      // Cannot contain whitespace
      if (/\s/.test(encrypted)) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted symbol cannot contain whitespace`,
        );
      }

      // Cannot contain ASCII control characters
      if (encrypted.charCodeAt(0) < 32 || encrypted.charCodeAt(0) === 127) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted symbol cannot be a control character`,
        );
      }
    }

    // Duplicate encrypted symbol

    if (encrypted && reverse[encrypted]) {
      rowErrors.push(
        `Row ${rowNumber}: "${encrypted}" already belongs to srno ${reverse[encrypted]}`,
      );
    }

    // Store valid mapping

    if (rowErrors.length) {
      errors.push(...rowErrors);
    } else {
      mapping[ascii] = encrypted;
      reverse[encrypted] = srno;
    }
  }

  // Missing rows validation

  if (Object.keys(mapping).length !== 128) {
    errors.push(
      `Exactly 128 valid mappings required; found ${Object.keys(mapping).length}`,
    );
  }

  if (errors.length) {
    showToast(
      "Invalid CSV",
      `${errors.length} errors found. Check rows: ` +
        errors
          .map((error) => error.match(/Row \d+/)?.[0])
          .filter(Boolean)
          .filter((value, index, array) => array.indexOf(value) === index)
          .join(", "),
    );

    console.error("CSV validation errors:", errors);

    return;
  }

  mapper.loadCustomMapping(mapping);

  localStorage.setItem("customMapping", JSON.stringify(mapping));

  showToast("Success", "Custom collection loaded");
}
