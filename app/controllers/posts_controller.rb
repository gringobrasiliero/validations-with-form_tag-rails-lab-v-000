class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
      if @post.valid?
        @post.update(post_params)
        redirect_to post_path(@post)
      else
        render :edit
      end
  end

  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end
end
