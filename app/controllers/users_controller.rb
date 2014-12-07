class UsersController < ApplicationController

  load_and_authorize_resource


  #
  # PUT /user/1/follow
  #
  def follow
    Rails.logger.warn("XXX User to follow: #{@user}")
    current_user.follow(@user)
    redirect_to user_posts_path(@user), notice: "Followed #{@user.email}"
  end


  #
  # PUT /user/1/unfollow
  # 
  def unfollow
    Rails.logger.warn("XXX User to unfollow: #{@user}")
    current_user.unfollow(@user)
    redirect_to user_posts_path(@user), notice: "Unfollowed #{@user.email}"
  end


end
