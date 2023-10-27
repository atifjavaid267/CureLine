import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["flashMessage"]

  connect() {
    if (this.hasFlashMessageTarget) {
      this.hideFlashMessage();
    }
  }

  hideFlashMessage() {
    setTimeout(() => {
      this.flashMessageTarget.classList.add("hidden");
    }, 5000);
  }
}
