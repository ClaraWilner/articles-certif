import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment"
export default class extends Controller {
  static targets = ["formComment"]
  connect() {
    console.log("Coucou")
  }

  fire() {
    this.formCommentTarget.classList.toggle("d-none");
  }
}
