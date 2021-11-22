import { Controller } from "stimulus";

let basket;

export default class extends Controller {
  static targets = ['add', 'remove', 'links'];

  initialize() {
    // 1. get the basket array
    basket = JSON.parse(this.element.dataset.basket)

    // 2. how many times do we find the id in the array -> [ [id, occurence],[4,2], [7,1] ]
    const counts = {}
    basket.forEach(number => {
      counts[number] = counts[number] ? counts[number] + 1 : 1;
    } )

    // 3. iterate through the hash
    Object.keys(counts).forEach( id => {
      // 4. for each id -> target the product-id
      // 5. update the innertext of target with occurence
      const product = parseInt(this.element.dataset.product)

      if (parseInt(id) === product) {
         this.element.querySelector('span').innerText = counts[id]
      }
    })
  }



  connect() {
    // 1. iterate through the links
    // 2. access the value in cart-number
    // 3. if == 0 -> disable cart-minus
    this.buttonDisable()
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


    this.buttonDisable()

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

    this.buttonDisable()

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


  buttonDisable = () => {
    this.linksTargets.forEach(link => {
      const cartNumber = link.querySelector('.cart-number')
      // console.log(parseInt(cartNumber.innerText) === 0 )
      if (parseInt(cartNumber.innerText) === 0) {
        link.querySelector('.minus').style.border = '0'
        link.querySelector('.cart-minus').classList.add('d-none')
      } else {
        link.querySelector('.minus').style.border = '1px solid var(--clr-green-300)'
        link.querySelector('.cart-minus').classList.remove('d-none')
      }
    })
  }
}
