import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["unhide", "expand", "acthide", "x"]

  connect() {
  }

  addDish(e) {
    if (this.unhideTarget.style.display === "none") {
      this.unhideTarget.style.display = "";
      this.acthideTarget.style.display = "none";
      this.xTarget.style.display = "";
      this.expandTarget.classList.remove("recipe-card");
      this.expandTarget.classList.add("recipe-card-expanded");
    }
  }

  undo(e) {
    if (this.acthideTarget.style.display === "none") {
      this.unhideTarget.style.display = "none";
      this.expandTarget.classList.remove("recipe-card-expanded");
      this.expandTarget.classList.add("recipe-card");
      this.acthideTarget.style.display = "";
      this.xTarget.style.display = "none";
    }
  }
}
