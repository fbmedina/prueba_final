class TeachersController < ApplicationController
  def index
    @users = User.where(role: 2)
  end

  def show
  end

  private
    def store_params
      params.require(:user).permit(:name, :email, :profile_photo, :role)
    end
end
