class UsersController < ApplicationController

  load_and_authorize_resource


  #
  # PUT /user/1/follow
  #
  def follow
    current_user.follow(@user)
    redirect_to user_posts_path(@user), notice: "Followed #{@user.username}"
  end


  #
  # PUT /user/1/unfollow
  # 
  def unfollow
    current_user.unfollow(@user)
    redirect_to user_posts_path(@user), notice: "Unfollowed #{@user.username}"
  end


end
