require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    it "works! (now write some real specs)" do
      get products_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /products/:id/add_to_cart_product" do
    it "should return status 200" do
      shop = Shop.create!(name: 'Shop')
      product = Product.create(name: 'Milk', shop: shop)
      post add_to_cart_product_path(product), headers: { accept: 'text/plain' }
      expect(response).to have_http_status(200)
    end
  end
end
