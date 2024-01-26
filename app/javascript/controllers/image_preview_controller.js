import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="image-preview"
export default class extends Controller {
  static targets = ["input", "preview"];
  preview() {
    let input = this.inputTarget;
    let preview = this.previewTarget;
    while (preview.firstChild) {
      preview.removeChild(preview.firstChild);
    }
    for (let i = 0; i < input.files.length; i++) {
      const newImage = document.createElement("img");
      const imageContainer = document.createElement("div");
      imageContainer.classList.add("flex", "items-center", "justify-center");
      imageContainer.appendChild(newImage);
      let file = input.files[i];
      preview.appendChild(imageContainer);
      let reader = new FileReader();
      reader.onloadend = function () {
        newImage.src = reader.result;
      };
      if (file) {
        reader.readAsDataURL(file);
        newImage.classList.add("h-48", "py-3");
      } else {
        newImage.src = "";
      }
    }
  }
}
