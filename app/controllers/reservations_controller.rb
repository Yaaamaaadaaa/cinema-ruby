class ReservationsController < ApplicationController
  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.find(params[:schedule])
    @selects = params[:selects].split(",")
    @count = @selects.size
    amount = 1800 * @count
    @amount = amount.to_s(:delimited)
  end
end
