class UsersController < ApplicationController
  def index
    @users = User.enabled_users
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

  def search
    user = User.search(params[:q]).first
    respond_to do |format|
      format.html { render :text => user.first_name + " " + user.email }
      format.js { render :text => 'adsf' }
    end
  end

end
