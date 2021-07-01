class ReservationsController < ApplicationController
before_action :authenticate_user!, only: [:new]

  def show
    @schedule = Schedule.find(params[:id])
    @reserved_seat = @schedule.reservations.pluck(:reserved_seat).join(' ').gsub(" ", "/")
  end

  def new
    @reservation = Reservation.new
    @schedule = Schedule.find(params[:schedule])
    @selects = params[:selects].split(",")
    @count = @selects.size
    amount = 1800 * @count
    @amount = amount.to_s(:delimited)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to users_path, notice: "予約が完了しました"
    end
  end

  private

    def reservation_params
      params.require(:reservation).permit(:reserved_seat, :user_id, :schedule_id)
    end
end
