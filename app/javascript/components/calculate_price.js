const calculate_price = () => {


  const start = document.getElementById("booking_start_date");
  start.addEventListener("input",(event) => {
    const dateStart = (Date.parse(start.value))/86400000;
    console.log(dateStart);
  });

  const end = document.getElementById("booking_end_date");
  end.addEventListener("input", (event) => {
    const endStart = (Date.parse(end.value))/86400000;
    console.log(endStart);
  });

  const total = (endStart - dateStart)*animal.price

  console.log(total);

  // let duree = end - start
  // console.log(durée)
  // let total = durée * animal.price
  // console.log(total)
};


export { calculate_price };
