require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe 'GET /orders' do
    it 'should list all orders' do
      get orders_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /order' do
    let(:product) { create :product }
    let(:user) { create :user }
    it 'should return status ok' do
      expect(response).to have_http_status(200)
    end
  end
end
