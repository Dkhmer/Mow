const calculate_price = () => {


  const start = document.getElementById("booking_start_date");
  const end = document.getElementById("booking_end_date");
  const totalprice = document.getElementById("totalprice");
  const price = document.getElementById("price").innerText;

  if (end) {
    start.addEventListener("input",(event) => {
    });

    end.addEventListener("input", (event) => {
      const dateStart = (Date.parse(start.value))/86400000;
      console.log(dateStart);
      const endStart = (Date.parse(end.value))/86400000;
      console.log(endStart);
      const total = (endStart - dateStart) * parseInt(price, 10);
      console.log(price)

      console.log(total);

      console.log(totalprice)
      totalprice.innerText = total
    });

  };


  // let duree = end - start
  // console.log(durée)
  // let total = durée * animal.price
  // console.log(total)
};


export { calculate_price };
