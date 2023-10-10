import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "mobilemenu" ]

  connect() {}

  toggleMobileMenu() {
    console.log("Toggle mobile menu clicked");
    this.mobilemenuTarget.classList.remove('hidden');
  }

  hideMobileMenu() {
    console.log("Hide mobile menu clicked");
    this.mobilemenuTarget.classList.add('hidden');
  }
}

