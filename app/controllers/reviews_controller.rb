class ReviewsController < ApplicationController

  def create
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list.id)
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
