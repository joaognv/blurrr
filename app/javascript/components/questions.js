let inputs = document.getElementsByClassName("trigger-q-click")

for (let i = 0; i < inputs.length; i++) {
  inputs[i].childNodes[0].childNodes[0].addEventListener("click", handleClick)
}


function handleClick(event) {
  event.target.form.submit()
}
