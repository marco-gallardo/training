class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
  end

  def create
    Rent.create(params[:rent])
    redirect_to root_path
  end

  def edit
    @rent = Rent.find(params[:id])
  end

  def update
    Rent.find(params[:id]).update_attributes(params[:rent])
    redirect_to root_path
  end

  def show
    @rent = Rent.find(params[:id])
  end



end
