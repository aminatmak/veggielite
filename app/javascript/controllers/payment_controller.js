import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = [];

  pay() {
    const orderID         = this.element.dataset.orderId
    const stripeKey       = this.element.dataset.key
    const orderCheckoutId = this.element.dataset.orderCheckout

    const stripe = Stripe(stripeKey);
    stripe.redirectToCheckout({
      sessionId: orderCheckoutId
    });

    fetch(`/orders/${orderID}`, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() }
    })
  }
}
