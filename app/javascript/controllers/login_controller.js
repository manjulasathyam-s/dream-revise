import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="login"
export default class extends Controller {

  let sign_in_btn = document.querySelector("#sign-in-btn");
  let sign_up_btn = document.querySelector("#sign-up-btn");
  let container = document.querySelector(".container");
  connect() {
  }



 sign_up_btn.addEventListener("click", () => { 
    container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => { 
    container.classList.remove("sign-up-mode");
});


}
