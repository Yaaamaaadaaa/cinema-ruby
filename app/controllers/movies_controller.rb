class MoviesController < ApplicationController
  def index
    if params[:search].blank?
      @search_date = Date.current
    else
      @search_date = DateTime.parse(params[:search])
    end
    @date = []
    14.times do |i|
      @date[i] = Date.current + i
    end
    @movies = Movie.all.order(id: "DESC")
    @schedule = Schedule.where(screening_date: @search_date.in_time_zone.all_day)
  end

  def new
    check_admin
    @movies = Movie.all.order(id: "DESC")
    @movie = Movie.new
    @schedule = Schedule.new
  end

  def create
    check_admin
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path, notice: "映画を追加しました"
    else
      redirect_to new_movie_path, notice: "タイトル、詳細、上映時間のいづれかが空欄です"
    end
  end

  private

    def check_admin
      if current_user.id != 1
        redirect_to root_path
      end
    end

    def movie_params
      params.require(:movie).permit(:title, :detail, :running_time)
    end
end
