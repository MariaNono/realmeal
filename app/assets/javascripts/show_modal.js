const closeWindow = (window) => {
  window.style.display="none";
}

const button = document.getElementById("reserve_button");
const modal = document.getElementById("show-message");
const span = document.getElementsByClassName("close")[0];

button.addEventListener("click", event => {
  modal.style.display = "block";
});

span.addEventListener("click", event => {
  closeWindow(modal);
});

window.addEventListener('click', (event) => {
  if (event.target == modal) {
    closeWindow(modal);
  }
});

// Show guest profile as popup

const cards = document.getElementsByClassName("card-guest");
const guestProfile = document.getElementById("guest-profile-modal");
console.log(guestProfile);
// console.log(cards);
for (var i = 0; i < cards.length; i++) {
  // console.log(cards[i]);
  const guestImage = document.getElementById("guest-picture");
  console.log(guestImage);
  guestImage.addEventListener("click", event => {
    modal.style.display = "block";
  });
};




