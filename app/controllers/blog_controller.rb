class BlogController < ApplicationController

  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @blogs = Blog.includes(:user).order("created_at DESC")
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(post_params)
    redirect_to root_path
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def search
    @blogs = Blog.search(params[:keyword])
  end

  private
  def post_params
    params.require(:blog).permit(:title, :content).merge(user_id: current_user.id)
  end

end