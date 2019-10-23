class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :edit, :distroy]
  def index
    @restaurants = Restaurant.all

  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurantnew(restaurant_params)
    @restaurant.save
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def destroy
    @restaurant.destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_paramas
    params.require(:restaurants).permit(:name, :address, :phone_number, :category)
  end

end
