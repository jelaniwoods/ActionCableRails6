import consumer from "./consumer"

consumer.subscriptions.create("ContextChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the context channel!")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("Disconnected from context")
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(data)
    console.log("Recieved")
  }
});
