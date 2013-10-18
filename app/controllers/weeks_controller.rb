class WeeksController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
  def index
    @weeks = Week.find(:all, :include => :codes)
  end
  
  def new
    @week = Week.new
  end
  
  def create
    @week = Week.new(params[:week])
    if @week.save
      render :index
    else
      flash[:error] = "Failed to save week"
      render :new
    end
  end
  
  def show
    @week = Week.find(params[:id])
  end
  
end
