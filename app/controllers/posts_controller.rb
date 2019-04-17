class PostsController < ApplicationController

  def index
    @posts = Post.all.order(updated_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @post.replies.order(updated_at: :desc)
    @reply = Reply.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params(:name, :content, :user_id, :section_id))
    @post.save
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private


  def post_params(*args)
    params.require(:post).permit(*args)
  end


end
