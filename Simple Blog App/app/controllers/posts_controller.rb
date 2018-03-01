class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
      @post = Post.new
  end

  def show
      @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if (@post.update(post_params)) #save post params
        redirect_to @post # go to show view to render data
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    #render plain: params[:post].inspect submits to create
    @post = Post.new(post_params)
    if (@post.save) #save post params
        redirect_to @post # go to show view to render data
    else
      render 'edit'
    end
  end

  private def post_params
    params.require(:post).permit(:title, :body) #can only take in title and body
  end
end
