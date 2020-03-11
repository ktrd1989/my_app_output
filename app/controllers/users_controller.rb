class UsersController < ApplicationController
  def show
  end
  def logout
  end

  private
    def user_params
      params.require(:user).permit(:name,:image)
    end
end
