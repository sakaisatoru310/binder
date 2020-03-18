class BlogController < ApplicationController

  def index
    @blogs = Blog.all
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

  private
  def post_params
    params.require(:blog).permit(:title, :image, :content)
  end

end
