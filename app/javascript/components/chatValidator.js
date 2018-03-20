function chatValidator() {

  function validateForm() {
    if(chatInput.value.length >= 1){
      chatButton.disabled = false;
    } else {
        chatButton.disabled = true;
    }
  }

  let chatInput = document.querySelector('.chat-input')
  let chatButton = document.querySelector('.chat-send')
  setInterval(validateForm, 300)

}

export {chatValidator};
