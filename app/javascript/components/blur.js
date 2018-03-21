function blur() {
  function updateBlur() {
    let bubbles = document.getElementsByClassName('chat-bubble');
    let unblur = Math.round(bubbles.length);
            console.log(unblur)
            // console.log(bubbles)
      if (unblur > 7) {
        unblur = 5;
      }
    let avatar = document.querySelector('.avatar');
    avatar.style.filter = `blur(${5 - unblur}px)`;
  }
  setInterval(updateBlur, 1000);
}

export {blur};
