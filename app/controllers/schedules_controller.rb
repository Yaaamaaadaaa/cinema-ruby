class SchedulesController < ApplicationController
  def create
    check_admin
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path, notice: "スケジュールを追加しました"
    else
      redirect_to new_movie_path, notice: "日付またはスクリーンナンバーが空欄です"
    end
  end

  private

  def check_admin
    if current_user.id != 1
      redirect_to root_path
    end
  end
    def schedule_params
      params.require(:schedule).permit(:movie_id, :theater_number, :screening_date)
    end
end
