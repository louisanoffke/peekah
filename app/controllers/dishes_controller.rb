class DishesController < ApplicationController
  # before_action authenticate user for new, create, edit, update, destroy

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
    @dish.user = current_user
    if @dish.save
      redirect_to
    else
      render :new
    end
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
