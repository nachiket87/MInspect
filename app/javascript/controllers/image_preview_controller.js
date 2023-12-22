import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="image-preview"
export default class extends Controller {
  static targets = ["input", "preview"];
  preview() {
    let input = this.inputTarget;
    let preview = this.previewTarget;
    let file = input.files[0];
    let reader = new FileReader();
    reader.onloadend = function () {
      preview.src = reader.result;
    };
    if (file) {
      reader.readAsDataURL(file);
      preview.classList.add("h-48", "py-3");
    } else {
      preview.src = "";
    }
  }

  sayHi() {
    console.log("hihihi");
  }
}
