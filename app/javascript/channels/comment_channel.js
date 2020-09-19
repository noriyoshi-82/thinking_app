import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    const html = `<p>${data.content.comment}</p>`;
    const comment = document.getElementById('comment-field');
    const newComment = document.getElementById('comment');
    comment.insertAdjacentHTML('afterbegin', html);
    newComment.value='';
  }
});