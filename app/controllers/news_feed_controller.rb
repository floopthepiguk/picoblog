class NewsFeedController < ApplicationController


  #
  # GET /news_feed
  # 
  def show
    @posts = Post.order(:created_at)
  end

end
