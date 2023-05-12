import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-collection"
export default class extends Controller {
  static targets = ["radio"]

  connect() {
    console.log("connecté a insert-in-collection")
    console.log("controller :", this.element)
    console.log("my radio button :", this.radioTarget)

  }
  check(event) {
    event.preventDefault()
    console.log("type d'évènement :", event)
    console.log("TODO: send request in AJAX")
    console.log("radio button always here ? :", this.radioTarget)

    fetch(this.radioTarget.action, {
      method: "POST",
      // headers: { "Accept": "application/json" },
      // body: new RadioData(this.radioTarget)
    })
    console.log("pass the json ? :", this.radioTarget)
    // erreur à partir du passage du paramètre headers:, method: "POST" est accepté
    // quelque chose à définir dans application/json???
      .then(response => response.json())
      .then((data) => {
        console.log("data????",data)
        console.log("radioTarget ???",this.radioTarget)
      })
  }


  send(event) {
    //event.preventDefault()

    console.log("TODO: disable button ?")
  }
}
