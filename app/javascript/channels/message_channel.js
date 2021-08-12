import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
    const html = `
      <div class="message-user">
        ${data.message.user_nickname}
      </div>
      <div class="message-date">
        ${data.message.created_at}
      </div>
      <div class="lower-message">
        <div class="message-content">
          ${data.message.content}
        </div>
      </div>`;
    const messages = document.getElementById('list')
    const newMessage = document.getElementById('message_content');
    messages.insertAdjacentHTML('beforebegin', html);
    newMessage.value='';
    location.reload();
  }
});
