class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:schedules).order(id: "DESC")
  end

  def new
    @movies = Movie.all
    @movie = Movie.new
    @schedule = Schedule.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path, notice: "映画を追加しました"
    end
  end

  private

    def movie_params
      params.require(:movie).permit(:title, :detail, :running_time)
    end
end
