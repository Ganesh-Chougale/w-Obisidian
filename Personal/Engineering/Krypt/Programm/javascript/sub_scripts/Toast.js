function showToast(title, message) {
  document.getElementById("toastTitle").innerText = title;
  document.getElementById("toastMessage").innerText = message;

  const toast = new bootstrap.Toast(document.getElementById("appToast"), {
    delay: 5000, 
    autohide: true,
  });

  toast.show();
}
