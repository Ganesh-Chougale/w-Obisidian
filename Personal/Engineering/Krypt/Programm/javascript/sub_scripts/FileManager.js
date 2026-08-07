function downloadCSV(content) {
  const blob = new Blob([content], {
    type: "text/csv",
  });

  const url = URL.createObjectURL(blob);

  const link = document.createElement("a");

  link.href = url;

  link.download = "my_custom_collection.csv";

  link.click();

  URL.revokeObjectURL(url);
}
