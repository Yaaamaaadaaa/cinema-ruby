class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  
  def index
    @reservations = current_user.reservations.order(id: "DESC")
  end
end
