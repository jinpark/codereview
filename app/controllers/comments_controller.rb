class CommentsController < ApplicationController
  
  def new
    
  end
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    
    if @comment.save
      redirect_to Code.find(@comment.code_id)
    else
      flash[:error] = "Comment not saved"
      render :back
    end
  end
  
end
