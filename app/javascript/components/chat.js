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

  const refresh = document.querySelector('.chatBubbles');

    function refreshPage() {
      // we want to reload the div chat bubbles
      // fetch from messages
      const url = `/matches/${matchId}/messages`;
      fetch(url, {
        method: 'get',
        headers: { "Content-Type": "application/json" },
      })
      .then(response => response.json())
      .then((messages) => {

        document.querySelector('.chat-bubbles').innerHTML = "";
        // 1. clear the messages list :
        //    .innerHTML = ""  or $(".whatver").html("");
        // 2. iterate over each message
        messages.forEach(function(message) {
          // message is a hash
          const messageUserId = message.user_id;
          let messagePosition;

          if (messageUserId == userId) {
            messagePosition = "right";
          } else {
            messagePosition = "left";
          }

          chatBubbles.insertAdjacentHTML(
            'beforeend',
            `<div class="bubble-${messagePosition}"><div class="chat-bubble"><p>${message.message}</p></div></div>`
          );

          // if userId is current_user
          // then bubble-right
          // else bubble-left
        });

        // 3. insert the HTML for each message
        console.log(messages);
      });
    }
  setInterval( refreshPage, 5000);

}

export {initChat};
