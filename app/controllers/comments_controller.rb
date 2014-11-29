class CommentsController < ApplicationController

  load_and_authorize_resource :post
  load_and_authorize_resource :comment, through: :post

  #
  # POST /posts/1/comments
  # 
  def create
    @post.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to @post, notice: "Comment succesfully posted"
  end


  private

  private
  def comment_params
    params.require(:comment).permit(:color, :icon_id)
  end


end
