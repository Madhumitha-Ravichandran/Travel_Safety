function searchTable() {
  const input = document.getElementById("searchInput").value.toLowerCase();
  const table = document.getElementById("userTable");
  const rows = table.getElementsByTagName("tr");

  for (let i = 1; i < rows.length; i++) {
    const cells = rows[i].getElementsByTagName("td");
    const name = cells[0].textContent.toLowerCase();
    rows[i].style.display = name.includes(input) ? "" : "none";
  }
}
