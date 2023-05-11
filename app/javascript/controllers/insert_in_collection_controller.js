import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-collection"
export default class extends Controller {
  static targets = "form"

  connect() {
    console.log("connecté a insert-in-collection")
    console.log("ce controller englobe :", this.element)
    console.log("my form", this.formTarget)
  }
  send(event) {
    //event.preventDefault()

    console.log("TODO: send request in AJAX")
  }
}
