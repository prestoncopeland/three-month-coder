class PostsController < ApplicationController
before_action :require_login, except: [:index, :show]

  def index
    @posts = Post.all.order(:created_at)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    flash.notice = "Post '#{@post.title}' created!"
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash.notice = "Post '#{@post.title}' updated!"
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash.notice = "Post '#{@post.title}' deleted!"
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :tag_list)
  end

end
