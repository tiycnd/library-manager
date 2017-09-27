class ReviewsController < ApplicationController
  before_action :authenticate
  before_action :get_book

  def create
    @review = @book.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      render status: :created
    else
      render json: {
        errors: @review.errors
      }, status: :bad_request
    end
  end

  def destroy
    @review = @book.reviews.find(params[:id])
    if @review.user == current_user
      @review.destroy
      render json: {deleted: true}
    else
      render json: {error: "You are not authorized to delete this review"}, status: :unauthorized
    end
  end

  private

  def get_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:stars, :text)
  end
end
