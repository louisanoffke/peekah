class DishesController < ApplicationController

  # before_action authenticate


  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def dish_params
    params.require(:dish).permit(:price, :is_available, :recipe, :restaurant, :description)
  end

  def dish_id
    @dish = Dish.find(params[:id])
  end

end


# before action authenticate user for new and edit
