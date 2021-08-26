class MoviesController < ApplicationController

def index
  @movies = Movie.all
end

def show
  @movie = Movie.find(params[:id])
end

def new
  @movie = Movie.new
end

def create
  @movie = Movie.new(movie_params)
  @movie.save
  # redirect_to tasks_path
end
# edit
# update

def destroy
  @movie = Movie.find(params[:id])
  @movie.destroy

  # redirect_to tasks_path

end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

end
