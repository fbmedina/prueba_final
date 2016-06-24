class TeachersController < ApplicationController
  def index
    @users = User.where(role: 2).order(:name).page params[:page]
  end

  def show
  end
end
