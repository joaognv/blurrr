function initChat(){

  const submit = document.querySelector('.chat-send');

   // scroll to bottom of chatBubbles div
  const chatBubbles = document.querySelector('.chat-bubbles')
  chatBubbles.scrollTo(0, chatBubbles.scrollHeight);

  const matchIdInput = document.querySelector("#match_id");
  const matchId = matchIdInput.value;

  const userIdInput = document.querySelector("#user_id");
  const userId = userIdInput.value;

  submit.addEventListener('click', function(event){
    event.preventDefault();
    const chatInput = document.querySelector('.chat-input');

    // append a new message to the list
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
    const url = "/messages";
    fetch(url, {
      method: 'POST',
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(data)
    })

    chatBubbles.scrollTo(0, chatBubbles.scrollHeight);

  });

}

export {initChat};
