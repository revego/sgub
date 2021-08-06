// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.

import { createConsumer } from "@rails/actioncable"
//createConsumer('https://ws.example.com/cable')
//import { createConsumer } from "../../../vendor/action_cable";

export default createConsumer()
