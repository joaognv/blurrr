function initChat(){
  const submit = document.querySelector('.send_button');

  const matchIdInput = document.querySelector("#match_id");
  const matchId = matchIdInput.value;

  const userIdInput = document.querySelector("#user_id");
  const userId = userIdInput.value;

  submit.addEventListener('click', function(event){
    event.preventDefault();
    const chatMessage = document.querySelector('.chat_message');

    // append a new message to the list
    const messageList = document.querySelector('.messages_list')
    messageList.insertAdjacentHTML('beforeend', `<div>${chatMessage.value}</div>`);

    // prepare the data to send before clearing the input
    const data = {
      "message": {
        'match_id': matchId,
        'user_id': userId,
        "message": chatMessage.value
      }
    };

    chatMessage.value = '';  // this clears the input

    // send a POST request to create the message in the DB
    const url = "http://localhost:3000/messages";
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
