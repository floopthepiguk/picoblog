class PostsController < ApplicationController
  before_filter :authenticate_user!

  load_and_authorize_resource :user
  load_and_authorize_resource :post, through: :user

  respond_to :html

  def index
    @posts = @posts.page params[:page]
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@user, @post)
  end

  def edit
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.save
    respond_with(@user, @post)
  end

  def update
    @post.update(post_params)
    respond_with(@user, @post)
  end

  def destroy
    @post.destroy
    respond_with(@user, @post)
  end

  private
  def post_params
    params.require(:post).permit(:color, :icon_id)
  end

end
