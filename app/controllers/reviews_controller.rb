class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @kitchen = Kitchen.find(params[:kitchen_id])
    @user_id = 1
  end

  def create
    @review = Review.new(review_params)
    @kitchen = Kitchen.find(params[:kitchen_id])
    @review.kitchen = @kitchen
    @review.save
    redirect_to kitchens_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
  end

  def delete
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:title, :subtitle, :rating, :comment, :booking_id)
  end

end
