class CommentsController < ApplicationController

  def index
    # @comments = Comment.all
    render json: Comment.all
  end


  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end


  def create
    @comment = Comment.create(comment_params)
    render json: @comment
  end



  private
  def comment_params
    params.require(:comment).permit(:climb_id, :user_id, :content)
  end

end
