class MusicsController < ApplicationController
  before_action :find_music, only: [:edit, :update, :show, :destroy]

  # to display a collection of movies
  def index
    @musics = Music.all
  end

  # to display a form to create a new movie
  def new
    @music = Music.new
  end

  # the logic to store the new data into the database
  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to musics_path
    else
      render :new
    end
  end

  # to display a form to update an existing movie
  def edit

  end

  # the logic to alter the data of an existing movie in the DB
  def update
    if @music.update(music_params)
      redirect_to musics_path
    else
      render :edit
    end
  end

  # to display data from a specific movie
  def show

  end

  # the logic to remove a specific movie from the database
  def destroy
    @music.destroy
    redirect_to musics_path
  end

  private

  def music_params
    params.require(:music).permit(:title,:artist,:album,:released_at)
  end

  def find_music
    @music = Music.find(params[:id])
  end

end