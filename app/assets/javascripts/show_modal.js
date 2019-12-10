const closeWindow = (element) => {
  element.style.display="none";
}

const button = document.getElementById("reserve_button");
const modal = document.getElementById("show-message");
const span = document.getElementsByClassName("close")[0];

if (button) {
  button.addEventListener("click", event => {
    // if(button.innerText == "reserve now") {
    //   button.innerText = "Reserved";
    // }
    // event.currentTarget.setAttribute("disabled", "");
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
}

// Show guest profile as popup

const cards = document.querySelectorAll(".cards-for-all-guests");

const guestProfilePage = document.querySelectorAll("#guest-profile-page");
const closeGuestProfile = document.querySelectorAll(".close-guest-profile");

if (cards) {
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
}


// Show host profile as popup

const host = document.querySelector("#host-card");
const hostProfilePage = document.querySelector("#host-profile-page");
const closeHostProfile = document.querySelector(".close-host-profile");

if (host) {
  host.addEventListener("click", (event) => {
    // if (event.target !== closeHostProfile) {
      hostProfilePage.style.display = "block";
    // }
  });

  closeHostProfile.addEventListener("click", (event) => {
    event.stopPropagation();
    closeWindow(hostProfilePage);
  });

  window.addEventListener('click', (event) => {
    if (event.target == hostProfilePage) {
      closeWindow(hostProfilePage);
    }
  });
}




