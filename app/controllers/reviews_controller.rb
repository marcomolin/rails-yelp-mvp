class ReviewsController < ApplicationController
  def new
    @restaurants = Restaurant.find(params[:restaurant_id])
    @reviews = Review.new
  end
  def create
    @restaurants = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

private

def review_params
  params.require(:review).permit(:rating, :content)

end
end
