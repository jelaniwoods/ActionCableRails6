import consumer from "./consumer"

consumer.subscriptions.create("ResourceChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the Resource")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(data)
    $('#resource_messages').append('<div class="message"> <strong>' + data.user + '</strong>: ' + data.content + '</div>')
    // let message = '<a class="list-group-item list-group-item-action d-flex align-items-center justify-content-between" href="/messages/15"> <div> <strong>alice</strong>' +
    //  '<small class="text-muted">' + data. '</small> next i restarted the server for any changes </div> <span class="btn btn-sm btn-outline-secondary"> <i class="fas fa-chevron-right fa-fw"></i> </span> </a> </div>'
    console.log("Recieving:")
    console.log(data.content)
  }
});

let submit_messages;

$(document).on('turbolinks:load', function () {
  submit_messages()
})

submit_messages = function () {
  $('#message_body').on('keydown', function (event) {
    if (event.keyCode == 13) {
      $('input').click()
      event.target.value = ''
      event.preventDefault()
    }
  })
}