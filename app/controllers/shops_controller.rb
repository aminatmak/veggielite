class ShopsController < ApplicationController
  def index
    @shops = Shop.all

    @markers = @shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
