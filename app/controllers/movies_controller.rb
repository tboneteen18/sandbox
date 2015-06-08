class MoviesController < ApplicationController
  before_action :find_movie, only: [:edit, :update, :show, :destroy]

  # to display a collection of movies
  def index
    @movies = Movie.all
  end

  # to display a form to create a new movie
  #singular since we aren't working in a collection
  def new
    @movie = Movie.new
  end

  # the logic to store the new data into the database
  def create
    @movie = Movie.new(movie_params)
   if @movie.save #save returns true or false
     #it returned true. do stuff
     redirect_to movies_path
   else
     #it returned false. do different stuff
     render :new
     #redirect_to new_movie_path will also work but its bad since it erases  what you have filled out
     #this is bad and use the render instead of redirect when it fails
   end
  end

  # to display a form to update an existing movie
  def edit

  end

  # the logic to alter the data of an existing movie in the DB
  def update
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  # to display data from a specific movie
  def show

  end

  # the logic to remove a specific movie from the database
  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  #{movie: {title: '', released_at ''}}
  def movie_params
    params.require(:movie).permit(:title, :released_on)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end