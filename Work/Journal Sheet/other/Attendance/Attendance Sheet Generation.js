(() => {

    const rows = document.querySelectorAll("#table_list tbody tr");

    if (!rows.length) {
        alert("Attendance table not found.");
        return;
    }

    const headers = [
        "SrNo",
        "Date",
        "Shift",
        "InTime",
        "OutTime",
        "ActualIn",
        "ActualInTime",
        "ActualOut",
        "ActualOutTime",
        "EarlyIn",
        "EarlyOut",
        "LateIn",
        "LateOut",
        "WorkTime",
        "OverTime",
        "Attendance",
        "Department"
    ];

    const data = [headers];


    rows.forEach(r => {

        const c = r.querySelectorAll("td");

        if (c.length < 17) return;

        const getInput = td => {
            const i = td.querySelector("input");
            return i ? i.value.trim() : td.innerText.trim();
        };

        const getSelect = td => {
            const s = td.querySelector("select");
            return s ? s.options[s.selectedIndex].text.trim() : td.innerText.trim();
        };

        data.push([
            c[0].innerText.trim(),
            c[1].innerText.replace(/\n/g, " "),
            getSelect(c[2]),
            c[3].innerText.trim(),
            c[4].innerText.trim(),

            getInput(c[5]),   // Actual In Date
            getInput(c[6]),   // Actual In Time

            getInput(c[7]),   // Actual Out Date
            getInput(c[8]),   // Actual Out Time

            getInput(c[9]),   // Early In
            getInput(c[10]),  // Early Out
            getInput(c[11]),  // Late In
            getInput(c[12]),  // Late Out
            getInput(c[13]),  // Work Time
            getInput(c[14]),  // Over Time

            getSelect(c[15]),
            getSelect(c[16])
        ]);

    });

    const csv = data.map(r =>
        r.map(v => `"${String(v).replace(/"/g, '""')}"`).join(",")
    ).join("\n");

    const blob = new Blob([csv], { type: "text/csv" });
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = "GSC_Attendance.csv";
    a.click();

})();