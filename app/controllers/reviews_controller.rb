class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @flat = Flat.find(params[:flat_id])
    @review.flat = @flat
    @review.save
    redirect_to flat_path(@flat)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
