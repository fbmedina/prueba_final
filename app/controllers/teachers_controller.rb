class TeachersController < ApplicationController
  def index
    @users = User.where(role: 2)
  end

  def show
  end
end
