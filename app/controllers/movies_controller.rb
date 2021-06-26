class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:schedules)
  end
end
