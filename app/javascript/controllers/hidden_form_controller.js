import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["unhide"]

  connect() {
  }

  addDish(e) {
    if (this.unhideTarget.style.display === "none") {
      this.unhideTarget.style.display = "";
    } else {
      this.unhideTarget.style.display = "none";
    }
  }
}
