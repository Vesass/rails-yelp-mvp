class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all
  end

  def edit
  @restaurant = Restaurant.find(params[:id])
  end

  def new
  @restaurant = Restaurant.new
  end

  def create        # POST /restaurants
  @restaurant = Restaurant.new(restaurant_params)
  if @restaurant.save
    redirect_to restaurant_path(@restaurant)
  else
    render :new
  end
  end

  def show
  @restaurant = Restaurant.find(params[:id])
  end

  def destroy       # DELETE /restaurants/:id
  @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

    private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category,)
  end
end
