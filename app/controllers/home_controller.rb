class HomeController < ApplicationController
  def top
    @posts = Post.all
  end
  def diary1
  end
  def diary_snow
  end
  def snow_heart
  end

  def diary
    @post = Post.find_by(id:params[:id])
    @final = Post.last
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def new
    @posts = Post.all
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/home/diary")
  end


end
