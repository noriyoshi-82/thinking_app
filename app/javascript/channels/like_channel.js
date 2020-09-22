import consumer from "./consumer"

consumer.subscriptions.create("LikeChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const like = document.getElementById("like-create")
    const likes = document.getElementById("like-p")
    likes.innerHTML = `<p>${data.count}人</p>`;
    like.setAttribute("style", "background-color: rgb(207, 237, 248);");
    like.innerHTML = `<div id="icon-change"><i class="far fa-grin-wink" >good!!済み</i></div>`
  }
});
