import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['product', 'links'];

  addProduct(event) {
    event.preventDefault();
    const url = this.productTarget.href;
    fetch(url, {
      method: 'POST',
      headers: {
        'Accept': 'text/plain'
      }
    })
    .then(response => {
      response.text()
    })
    .then((data) => {
      this.linksTarget.outerHTML = data;
    })
  }

  removeProduct() {
  }
}
