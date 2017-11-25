class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    comment.user = User.find(params[:user_id])
    comment.save
    redirect_to post_path(comment.post_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end

  def comment_params_with_id
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
