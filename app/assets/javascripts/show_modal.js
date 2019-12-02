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

const cards = document.querySelectorAll(".cards-for-all-guests");

const guestProfilePage = document.querySelectorAll("#guest-profile-page");
const closeGuestProfile = document.querySelectorAll(".close-guest-profile");

cards.forEach((card, index) => {
  card.addEventListener("click", (e) => {
    guestProfilePage[index].style.display = "block"
  })
  closeGuestProfile.forEach((close, index) => {
    close.addEventListener("click", event => {
      closeWindow(guestProfilePage[index]);
    });
  })
  window.addEventListener('click', (event) => {
    if (event.target == guestProfilePage[index]) {
      closeWindow(guestProfilePage[index]);
    }
  });
})


// Show host profile as popup

const host = document.querySelector("#host-card");
const hostProfilePage = document.querySelector("#host-profile-page");
const closeHostProfile = document.querySelector(".close-host-profile");

host.addEventListener("click", (event) => {
  hostProfilePage.style.display = "block";
});

closeHostProfile.addEventListener("click", event => {
  closeWindow(hostProfilePage);
  // hostProfilePage.style.display = "none";
});

window.addEventListener('click', (event) => {
  if (event.target == hostProfilePage) {
    closeWindow(hostProfilePage);
  }
});




