require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe 'GET /order/:id' do
    let(:order) { create :order }

    it 'should list all orders' do
      get order_path(order)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /orders' do
    let(:product) { create :product }
    let(:user) { create :user }

    it 'should return status ok' do
      expect { post orders_path, params: { user: user } }.to change(Order, :count).by(1)
    end
  end
end
