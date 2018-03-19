function initSlider() {
  if (document.getElementsByClassName("slider")) {
      var sliders = document.getElementsByClassName("slider");
      for(let i = 0; i < sliders.length; i++) {
        let val = document.getElementById("val-" + sliders[i].id)
        val.innerHTML = sliders[i].value
        sliders[i].oninput = function() {
          val.innerHTML = sliders[i].value;
        }
      }
  }

}

export {initSlider};
