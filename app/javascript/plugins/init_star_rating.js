import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/fontawesome-stars.css"

const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'fontawesome-stars'
  });
};

export { initStarRating };


// fontawesome-stars-o.css   fontawesome-stars.css
