class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    # @post = Post.create(title: params[:post][:title], content: params[:post][:content])
    @post = Post.create(post_params)

    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
