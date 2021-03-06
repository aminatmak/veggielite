require 'rails_helper'

RSpec.describe 'Shops', type: :requests do
  describe 'GET /shops' do
    it 'should return list of shops' do
      get shops_path
      expect(response).to have_http_status(200)
    end
  end
end