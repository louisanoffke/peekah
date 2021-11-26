class DishesController < ApplicationController
  before_action :dish_id, only: %i[show edit update]

  def index
    @dishes = Dish.all

    @markers = @dishes.map do |dish|
      {
        lat: dish.restaurant.latitude,
        lng: dish.restaurant.longitude
      }
    end
  end

  def show; end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @recipe = Recipe.find(params[:recipe_id])
    @dish.recipe = @recipe
    @user = current_user
    if @dish.save
      redirect_to restaurant_path(@dish.restaurant), notice: "Dish successfully created & added to
      #{@dish.restaurant.name}'s menu."
    else
      @recipes = Recipe.all
      render "recipes/index"
    end
  end

  def edit; end

  def update
    @dish.update(dish_params)
    if @dish.save
      redirect_to restaurant_path(@dish.restaurant), notice: "Dish successfully updated on
      #{@dish.restaurant}'s menu."
    else
      render :new
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:price, :is_available, :recipe_id, :restaurant_id, :description)
  end

  def dish_id
    @dish = Dish.find(params[:id])
  end
end
