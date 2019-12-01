const closeWindow = (window) => {
  window.style.display="none";
}

const button = document.getElementById("reserve_button");
const message = document.getElementById("show-message");
const span = document.getElementsByClassName("close")[0];

button.addEventListener("click", event => {
  message.style.display = "block";
});

span.addEventListener("click", event => {
  closeWindow(message);
});

window.addEventListener('click', (event) => {
  if (event.target == message) {
    closeWindow(message);
  }
});





