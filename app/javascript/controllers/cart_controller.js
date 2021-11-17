import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [];

  connect() {
    console.log('welcome to cart');
  }

  add() {
    debugger;
    console.log('add');
  }

  remove() {
    console.log('remove');
  }
}
