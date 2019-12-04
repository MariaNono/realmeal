//= require rails-ujs
//= require_tree .
const numberOfGuests = document.querySelector('#booking_number_of_guests');

const calculatePrice = () => {
    const pricePerGuest = document.querySelector("#event-price").innerText;
    const totalPriceGuest = document.querySelector("#total-price")
    const price = parseFloat(pricePerGuest, 10);
    const no_of_guests = numberOfGuests.value;
    const int_no_of_guests = parseInt(no_of_guests, 10);
    const totalPrice = price * int_no_of_guests;
    // console.log(totalPrice);
    if (totalPriceGuest !== null) {
      totalPriceGuest.innerText = `Total price: ${parseFloat(totalPrice).toFixed(2)} €`;
    }
  };

if (numberOfGuests) {
  numberOfGuests.addEventListener('change', calculatePrice);
}

