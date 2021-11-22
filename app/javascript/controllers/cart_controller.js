import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['add', 'remove', 'links'];


  initialize() {
    // 1. get the basket array
    const basket = document.querySelector('basket')
    // 2. how many times do we find the id in the array -> [ [id, occurence],[4,2], [7,1] ]
    // 3. iterate through the array
    // 4. for each id -> target the product-id
    // 5. update the innertext of target with occurence
  }

  connect() {

  }


  async addProduct(event) {
    event.preventDefault();
    event.stopPropagation();

    // 1. Get the index of the box that needs increasing
    const target = event.currentTarget.dataset.index
    // console.log(target)

    // 2. select the box
    const numberField = document.getElementById(target)
    // console.log(numberField)

    // 3. increment the value of the box
    numberField.innerText = parseInt(numberField.innerText) + 1

    // select the counter
    const counter = document.querySelector('#counter')
    // console.log(counter)
    // increase the value by 1
    counter.innerText = parseInt(counter.innerText) + 1

    const url = this.addTarget.href;
    const response = await fetch(url, {
      method: 'POST',
      headers: {
        'Accept': 'text/plain'
      }
    })
    const parsedResponse = await response.text();
    // console.log(parsedResponse)

  }

  async removeProduct(event) {
    event.preventDefault();
    event.stopPropagation();

    const target = event.currentTarget.dataset.index
    // console.log(target)
    const numberField = document.getElementById(target)
    console.log(numberField)
    numberField.innerText = parseInt(numberField.innerText) - 1

    // select the counter
    // decrease the value by 1
    const counter = document.querySelector('#counter')
    counter.innerText = parseInt(counter.innerText) - 1

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
