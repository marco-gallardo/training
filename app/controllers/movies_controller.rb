class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def index
    @movies = Movie.all
  end

  def show
  end

  def create
    Movie.create(params[:movie])
    redirect_to :action => 'index'
  end

end
