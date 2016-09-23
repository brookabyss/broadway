class PlaysController < ApplicationController
  before_action :play_params, only: [:create, :edit, :update, :destroy]
  def index
  end
  
  def new
    @play = Play.new
  end
   
  def show
  end

  def create
    @play = Play.new(play_params)
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  private
  
  def paly_params
    params.require(:play).permit(:title, :description, :director)
  end
  
end
