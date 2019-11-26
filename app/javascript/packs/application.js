import "bootstrap";
import flatpickr from '../components/datepicker';
import { buttonActivationMap } from '../pages/eventsindex'
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../components/dropdown';


buttonActivationMap();
initSelect2();
