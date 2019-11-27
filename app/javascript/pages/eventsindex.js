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
      listShow.classList.toggle("hidden");
      mapShow.classList.toggle("hidden");
      if(mapButton.value == "Show Map") {
        mapButton.value == "Show List";
      } else {
        mapButton.value == "Show Map";
      }
      initMapbox();
    });
  }
}

export { buttonActivationMap };
