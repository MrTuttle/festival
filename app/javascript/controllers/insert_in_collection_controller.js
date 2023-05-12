import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-collection"
export default class extends Controller {
  static targets = ["radio", "bt"]

  connect() {
    console.log("connecté a insert-in-collection")
    console.log("controller :", this.element)
    console.log("my radio button :", this.radioTarget)
    console.log("my submit button :", this.btTarget)


  }
  check(event) {
    event.preventDefault()
    console.log("type d'évènement :", event)
    // console.log("TODO: send request in AJAX")
    console.log("radio button always here ? :", this.radioTarget)

    // fetch(this.radioTarget.action {
      // method: "POST",
      // headers: { "Accept": "application/json" },
      // body: new RadioData(this.radioTarget)
    // })
    // console.log("pass the json ? :", this.radioTarget)
//
      // .then(response => response.json())
      // .then((data) => {
        // console.log("data????",data)
        // console.log("radioTarget ???",this.radioTarget)
      // })
  }


  collect(event) {
    // event.preventDefault()
    console.log("Who I am ? :", this.element)


    console.log("TODO: hide radio bt ?")
    console.log("Loose page context after send data")

  }
}
