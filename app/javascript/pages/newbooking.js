const numberOfGuests = document.querySelector('#booking_number_of_guests');
const pricePerGuest = document.querySelector("#price-per-guest")
const totalPriceGuest = document.querySelector("#total-price")
console.log(numberOfGuests);
console.log(pricePerGuest.data);
console.log(totalPriceGuest);

const calculatePrice = () => {

    console.log("hi");
    // console.log(pricePerGuest.innerText.price);
    const price = parseFloat(pricePerGuest.dataset.price);
    const no_of_guests = numberOfGuests.value;
    const int_no_of_guests = parseInt(no_of_guests, 10)
    console.log(int_no_of_guests);
    const totalPrice = price * int_no_of_guests;
    totalPriceGuest.innerText = `Total price: ${parseFloat(totalPrice).toFixed(2)} €`;
  };

numberOfGuests.addEventListener('onChange', calculatePrice)



export { calculatePrice };

// const reserveButton = getElementById('#reserve-button');
// const message = getElementById('#message');
// console.log(reserveButton);
// const showMessage = () => {
//   reserveButton.addeventListener("click", (event) => {
//     message.classList.toggle("hidden");
//   });
// }
