class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  
  def index
    @reservations = current_user.reservations.joins(:schedule).where("screening_date > ?",Date.today).order(id: "DESC")
  end
end
