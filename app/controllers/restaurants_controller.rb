class RestaurantsController < ApplicationController
  before_action :restaurant_id, only: :show
  def show; end

  def index
    @restaurants = Restaurant.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end

  private
  def restaurant_id
    @restaurant = Restaurant.find(params[:id])
  end
end
