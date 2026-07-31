const tz1 = document.getElementById("tz1");
const tz2 = document.getElementById("tz2");

const timeInput = document.getElementById("timeInput");
const resultTime = document.getElementById("resultTime");

const preview1 = document.getElementById("preview1");
const preview2 = document.getElementById("preview2");

const detectBtn = document.getElementById("detectBtn");

const zones = Intl.supportedValuesOf("timeZone");

const copyBtn = document.getElementById("copyBtn");

// 🔥 load JSON
let countryMap = {};

fetch("TimeZone.json")
  .then(res => res.json())
  .then(data => {
    countryMap = data;
    init();
  });

// format label
function formatLabel(tz) {
  const parts = tz.split("/");
  const city = parts[1]?.replace(/_/g, " ") || tz;
  const region = parts[0];
  return `${city} (${region})`;
}

// 🔥 build searchable string
function buildSearchText(tz) {
  let search = tz + " " + formatLabel(tz);

  for (const country in countryMap) {
    const values = countryMap[country];

    if (values.includes(tz)) {
      search += " " + country + " " + values.join(" ");
    }
  }

  return search.toLowerCase();
}

// populate dropdown
function fill(select) {
  zones.forEach(z => {
    const opt = document.createElement("option");
    opt.value = z;

    const label = formatLabel(z);
    const search = buildSearchText(z);

    opt.textContent = label;
    opt.setAttribute("data-search", search);

    select.appendChild(opt);
  });
}

// select2 matcher
function matcher(params, data) {
  if (!params.term) return data;

  const term = params.term.toLowerCase();
  const search = data.element.getAttribute("data-search") || "";

  if (search.includes(term)) return data;

  return null;
}

// init after JSON loads
function init() {
  fill(tz1);
  fill(tz2);

  const userTZ = Intl.DateTimeFormat().resolvedOptions().timeZone;
  tz1.value = userTZ;
  tz2.value = "Asia/Ho_Chi_Minh";

  $(tz1).select2({ width: '100%', matcher });
  $(tz2).select2({ width: '100%', matcher });
}

// parse 12hr
function parse12hr(input) {
  const m = input.match(/(\d{1,2}):(\d{2})\s*(AM|PM)/i);
  if (!m) return null;

  let h = parseInt(m[1]);
  let min = m[2];
  let p = m[3].toUpperCase();

  if (p === "PM" && h !== 12) h += 12;
  if (p === "AM" && h === 12) h = 0;

  return { h, min };
}

// update
function update() {
  const parsed = parse12hr(timeInput.value);
  if (!parsed) return;

  const base = new Date();
  base.setHours(parsed.h, parsed.min);

  const t1 = base.toLocaleTimeString("en-US", {
    timeZone: tz1.value,
    hour: "2-digit",
    minute: "2-digit"
  });

  const t2 = base.toLocaleTimeString("en-US", {
    timeZone: tz2.value,
    hour: "2-digit",
    minute: "2-digit"
  });

  resultTime.value = t2;

  preview1.innerText = `${tz1.value} → ${t1}`;
  preview2.innerText = `${tz2.value} → ${t2}`;
}

// events
timeInput.addEventListener("input", update);
tz1.addEventListener("change", update);
tz2.addEventListener("change", update);

detectBtn.addEventListener("click", () => {
  const tz = Intl.DateTimeFormat().resolvedOptions().timeZone;
  tz1.value = tz;
  $(tz1).trigger("change");
});

copyBtn.addEventListener("click", () => {
  const text = `${preview1.innerText}\n${preview2.innerText}`;

  navigator.clipboard.writeText(text).then(() => {
    copyBtn.innerText = "ꪜ";
    setTimeout(() => copyBtn.innerText = "Copied to clipboard", 1500);
  });
});