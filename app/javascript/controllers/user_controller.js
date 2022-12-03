import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user"

export default class extends Controller {
  static targets    =     [ "first_name" ]
  connect() {
    console.log("Connected!");
  }



search_box(){
    console.log("Hello, Stimulus!");

  }

  first_name_validation(){
    var obj = document.getElementById("first_name")
    console.log(obj)
  }
}
