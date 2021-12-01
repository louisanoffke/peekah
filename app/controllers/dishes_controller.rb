class DishesController < ApplicationController
  before_action :dish_id, only: %i[show edit update last_ingredient]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # ALL Dishes:
    @dishes = Dish.all.includes(:restaurant, :recipe)

    # Allergen Filter:
    if params[:query].present?
      query_allergen_ids = Allergen.search_by_name(params[:query]).ids

      @dishes = []
      Dish.all.each do |dish|
        allergen_array = dish.allergens.reduce(&:+) || []
        no_matching_allergens = (allergen_array.map(&:id) & query_allergen_ids).empty?
        if dish.allergens.empty? || no_matching_allergens
          @dishes << dish
        end
      end
    end

    # Protein Filter: to find dishes with LESS THAN input amount
    if params[:protein].present?
      # raise
      @dishes = []
      Dish.all.each do |dish|
        if dish.protein <= params[:protein].to_i
          @dishes << dish
        end
      end
    end

    # map markers
    @markers = @dishes.map do |dish|
      {
        lat: dish.restaurant.latitude,
        lng: dish.restaurant.longitude,
        info_window: render_to_string(partial: "info_window", locals: { dish: dish }),
        image_url: helpers.asset_url("marker.png")
      }
    end
  end

  def show
    @markers = [@dish].map do |dish|
      {
        lat: dish.restaurant.latitude,
        lng: dish.restaurant.longitude,
        image_url: helpers.asset_url("marker.png")
      }
    end
  end

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

  def last_ingredient
    @dish_array = @dish.recipe.recipe_ingredients # PARTIAL ?
  end

  private

  def dish_params
    params.require(:dish).permit(:price, :is_available, :recipe_id, :restaurant_id, :description, :photo)
  end

  def dish_id
    @dish = Dish.find(params[:id])
  end
end
