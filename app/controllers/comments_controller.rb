class CommentsController < ApplicationController

  load_and_authorize_resource :post
  load_and_authorize_resource :comment, through: :post

  #
  # POST /posts/1/comments
  # 
  def create
    @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
    
    if @comment
      respond_to do |format|
        format.html { redirect_to @post, notice: "Comment succesfully posted" }
        format.js { render layout: false }
      end
    else
      redirect_to @post, notice: "Could not update Post"
    end
  end


  private

  private
  def comment_params
    params.require(:comment).permit(:color, :icon_id)
  end


end
