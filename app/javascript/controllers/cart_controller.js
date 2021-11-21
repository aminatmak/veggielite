import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['add', 'remove', 'links'];

  async addProduct(event) {
    event.preventDefault();
    event.stopPropagation();

    // select the counter
    const counter = document.querySelector('#counter')
    console.log(counter)
    // increase the value by 1
    counter.innerHTML = parseInt(counter.innerText) + 1
    const url = this.addTarget.href;
    const response = await fetch(url, {
      method: 'POST',
      headers: {
        'Accept': 'text/plain'
      }
    })
    const parsedResponse = await response.text();
    console.log(parsedResponse)


    // 1. increase the value of the field in between the two links by 1
    //  TODO

    // this.linksTarget.outerHTML = parsedResponse;
  }

  async removeProduct(event) {
    event.preventDefault();
    event.stopPropagation();

    // select the counter
    // decrease the value by 1
    const counter = document.querySelector('#counter')
    counter.innerHTML = parseInt(counter.innerText) - 1
    const url = this.removeTarget.href;
    const response = await fetch(url, {
      method: 'DELETE',
      headers: {
        'Accept': 'text/plain'
      }
    })
    const parsedResponse = await response.text();
    // this.linksTarget.outerHTML = parsedResponse;
  }
}
