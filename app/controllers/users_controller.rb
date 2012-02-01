class UsersController < ApplicationController
  def index
    @users = User.where(:enabled => true)
  end

  def new
    @user = User.new
  end

  def create
    User.create(params[:user])
    redirect_to root_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update_attributes(params[:user])
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).update_attribute(:enabled, false)
    redirect_to root_path
  end

end
