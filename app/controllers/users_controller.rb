class UsersController < ApplicationController
  def index
    @reservations = current_user.reservations.order(id: "DESC")
  end
end
