import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["unhide", "expand"]

  connect() {
  }

  addDish(e) {
    if (this.unhideTarget.style.display === "none") {
      this.unhideTarget.style.display = "";
      this.expandTarget.classList.remove("recipe-card");
      this.expandTarget.classList.add("recipe-card-expanded");
    } else {
      this.unhideTarget.style.display = "none";
      this.expandTarget.classList.remove("recipe-card-expanded");
      this.expandTarget.classList.add("recipe-card");
    }
  }
}
