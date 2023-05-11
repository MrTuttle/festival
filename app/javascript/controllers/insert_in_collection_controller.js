import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-collection"
export default class extends Controller {
  static targets = ["radio", "bt"]

  connect() {
    console.log("connecté a insert-in-collection")
    console.log("ce controller englobe :", this.element)
    console.log("my radio", this.radioTarget)
    console.log("my bt", this.btTarget)

  }
  check(event) {
    //event.preventDefault()
    console.log(event)
    console.log("TODO: send request in AJAX")
  }
  send(event) {
    //event.preventDefault()

    console.log("TODO: disable button ?")
  }
}
