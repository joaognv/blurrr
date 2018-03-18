function initChat(){
  const submit = document.querySelector('.chat-send');

  const matchIdInput = document.querySelector("#match_id");
  const matchId = matchIdInput.value;

  const userIdInput = document.querySelector("#user_id");
  const userId = userIdInput.value;

  submit.addEventListener('click', function(event){
    event.preventDefault();
    const chatInput = document.querySelector('.chat-input');

    // append a new message to the list
    const chatBubbles = document.querySelector('.chat-bubbles')
    chatBubbles.insertAdjacentHTML('beforeend', `<div class="bubble-right"><div class="chat-bubble"><p>${chatInput.value}</p></div></div>`);

    // prepare the data to send before clearing the input
    const data = {
      "message": {
        'match_id': matchId,
        'user_id': userId,
        "message": chatInput.value
      }
    };

    chatInput.value = '';  // this clears the input

    // send a POST request to create the message in the DB
    const url = "http://www.blurrr.me/messages";
    fetch(url, {
      method: 'POST',
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(data)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });

  });

}

export {initChat};
