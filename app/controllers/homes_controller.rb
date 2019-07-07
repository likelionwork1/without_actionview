class HomesController < ApplicationController
  def index
    @users = Post.all
  end

  def new
  end

  def create
    @user = Post.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save
    
    redirect_to '/'
  end

  def show
    @user = Post.find(params[:id])
  end

  def edit
    @user = Post.find(params[:id])
  end

  def update
    @user = Post.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save
    
    redirect_to '/'
  end

  def destroy
    Post.find(params[:id]).destroy
    
    redirect_to '/'
  end
end
