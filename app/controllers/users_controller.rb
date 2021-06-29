class UsersController < ApplicationController
  def index
    @schedules = current_user.schedules.pluck(:id)
  end
end
