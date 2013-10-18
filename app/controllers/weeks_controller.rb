class WeeksController < ApplicationController
  
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
