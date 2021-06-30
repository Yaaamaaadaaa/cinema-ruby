class SchedulesController < ApplicationController
  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path, notice: "スケジュールを追加しました"
    end
  end

  private

    def schedule_params
      params.require(:schedule).permit(:movie_id, :theater_number, :screening_date)
    end
end
