class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(permited_posts)
    @post.user = current_user
    if @post.save
      flash[:succes] = "Your post has been created"
      redirect_to root_path
    else
      flash.now[:error] = "Some error occured"
      render :new
    end
  end



  private
def permited_posts
  params.require(:post).permit(:body)
end
end
