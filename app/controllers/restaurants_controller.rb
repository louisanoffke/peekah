class RestaurantsController < ApplicationController
  before_action :restaurant_id, only: :show
  skip_before_action :authenticate_user!, only: :show

  def show; end

  private

  def restaurant_id
    @restaurant = Restaurant.find(params[:id])
  end
end
