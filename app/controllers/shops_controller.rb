class ShopsController < ApplicationController
  def index
    @shops = Shop.all

    @markers = @shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
      }
    end
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
