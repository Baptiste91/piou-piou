import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal"
export default class extends Controller {
  static targets = ["form"]

  connect() {

  }

  revealForm() {
    this.formTarget.classList.toggle("d-none")
  }
}
