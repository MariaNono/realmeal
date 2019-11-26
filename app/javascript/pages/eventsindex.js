import { initMapbox } from '../plugins/init_mapbox';

const buttonActivationMap = () => {
  const mapButton = document.querySelector('#events-map-button');
  console.log(mapButton)
  const mapShow = document.querySelector('#map-container');
  console.log(mapShow)
  const listShow = document.querySelector('#events-list-show');
  console.log(listShow)

  if (mapButton) {
    mapButton.addEventListener("click", (event) => {
      mapButton.classList.toggle("button-unselected");
      console.log("button")
      listShow.classList.toggle("hidden");
      console.log("hide list")
      mapShow.classList.toggle("hidden");
      console.log("hide map")
      initMapbox();
    });
  }
}

export { buttonActivationMap };
