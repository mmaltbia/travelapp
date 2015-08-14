class PostsController < ApplicationController
 
 #authorizes pages except index and show pages
 before_filter :authorize, except: [:index, :show] 
  def index
    @posts = Post.all
    render :index
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    post = current_user.posts.create(post_params)
    #redirect to '/users/post'
    redirect_to post_path(post)
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def edit
    @post = Post.find(params[:id])
    if current_user.posts.include? @post
      render :edit
    else
      # redirect_to '/profile'
      redirect_to profile_path
    end
  end

  def update
    post = Post.find(params[:id])
    if current_user.posts.include? post
      post.update_attributes(post_params)
    else
      redirect_to profile_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.dest
    redirect_to root_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :city_id, :author, :body)
  end
end
