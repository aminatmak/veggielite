import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['product', 'links'];

  async addProduct(event) {
    event.preventDefault();
    event.stopPropagation();
    const url = this.productTarget.href;
    const response = await fetch(url, {
      method: 'POST',
      headers: {
        'Accept': 'text/plain'
      }
    })
    const parsedResponse = await response.text();
    this.linksTarget.outerHTML = parsedResponse;
  }

  async removeProduct(event) {
    event.preventDefault();
    event.stopPropagation();
    const url = this.productTarget.href;
    const response = await fetch(url, {
      method: 'DELETE',
      headers: {
        'Accept': 'text/plain'
      }
    })
    const parsedResponse = await response.text();
    this.linksTarget.outerHTML = parsedResponse;
  }
}
