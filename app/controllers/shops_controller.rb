class ShopsController < ApplicationController
  def index
    @shops = policy_scope(Shop).order(created_at: :asc)

    @markers = @shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end
end
