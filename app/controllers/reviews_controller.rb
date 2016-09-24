class ReviewsController < ApplicationController
  before_action :review_params
  
  
  
  def new
    @review= Review.new
  end
  
  def create 
    @review= Review.new(review_params)
    @review.play_id= @play.id
    @review.user_id= current_user.id
  end
  
  if @review.save
    redirect_to play_path(@play)
  else
    render 'new'
  end
  
  private
  
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
  
  def find_play
    @play=Play.find(params[:play_id])
  end

end