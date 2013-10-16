class CodesController < ApplicationController
   before_filter :authenticate_user!, except: [:index, :show]
  
  def index
    @codes = Code.all.reverse
  end
  
  def new
    @code = Code.new
  end
  
  def create
    @code = Code.create(params[:code])
    @code.user_id = current_user.id
    if @code.save
      redirect_to @code
    else
      flash[:error] = "Failed to save"
      render :new
    end
  end
  
  def show
    @code = Code.find(params[:id])
    @comments = Comment.comments_by_parent(params[:id])
  end
  
  def edit
    @code = Code.find(params[:id])
  end
  
  def update
    @code = Code.find(params[:id])
    if @code.update_attributes(params[:code])
      redirect_to @code
    else
      flash[:error] = "Failed to edit"
      render :edit
    end
  end
  
  def destroy
    @code = Code.find(params[:id])
    if @code.destroy
      render :index
    else
      flash[:error] = "Failed to delete"
      render :edit
    end
    
  end
  
end
