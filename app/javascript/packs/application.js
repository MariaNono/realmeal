import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


import flatpickr from 'components/datepicker';
import { buttonActivationMap } from 'pages/eventsindex'
// import { showMessage } from '../pages/newbooking'
import { initMapbox } from 'plugins/init_mapbox';
import { initSelect2 } from 'components/dropdown';
//import { calculatePrice } from 'pages/newbooking';

buttonActivationMap();
// showMessage();
initSelect2();
//calculatePrice();

