const calculate_price = () => {

  let start = Date.parse(document.getElementById("booking_start_date").value)
  console.log(start)
  let end = Date.parse(document.getElementById("booking_end_date").value)
  console.log(end)
  let duree = end - start
  console.log(durée)
  let total = durée * @animal.price
  console.log(total)
}


export { calculate_price }
