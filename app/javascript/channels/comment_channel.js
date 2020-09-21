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
    // var createdAt = new Date();
    function dateToStr24HPad0(date, format) {
      if (!format) {
          format = 'YYYY/MM/DD hh:mm:ss'
      }
      format = format.replace(/YYYY/g, date.getFullYear());
      format = format.replace(/MM/g, ('0' + (date.getMonth() + 1)).slice(-2));
      format = format.replace(/DD/g, ('0' + date.getDate()).slice(-2));
      format = format.replace(/hh/g, ('0' + date.getHours()).slice(-2));
      format = format.replace(/mm/g, ('0' + date.getMinutes()).slice(-2));
      format = format.replace(/ss/g, ('0' + date.getSeconds()).slice(-2));
      return format;
     }
    var createdAt = dateToStr24HPad0(new Date(), 'YYYY/MM/DD hh:mm:ss')
    const html = `<p>${ data.user.nickname } : ${ data.content.comment } <a>${ createdAt }</a></p>`;
    const comments = document.getElementById('comment-field');
    const newComment = document.getElementById('comment');
    comments.insertAdjacentHTML('afterbegin', html);
    newComment.value='';
  }
});
