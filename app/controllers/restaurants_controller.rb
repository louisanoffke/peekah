class RestaurantsController < ApplicationController
  before_action :restaurant_id, only: :show
  skip_before_action :authenticate_user!, only: %i[index show]

  def show
    @markers = [
      {
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        image_url: helpers.asset_url("marker.png")
      }
    ]
  end

  def index
    @restaurants = Restaurant.all

    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        image_url: helpers.asset_url("marker.png")
      }
    end
  end

  private

  def restaurant_id
    @restaurant = Restaurant.find(params[:id])
  end
end
