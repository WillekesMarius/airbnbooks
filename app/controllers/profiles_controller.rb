class ProfilesController < ApplicationController
  before_action :set_user, only: [:show]
  
  def index
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @rentals = @user.rentals
  end


private 

  def set_user
    @user = User.find(params[:id])
  end

  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :photo)
  # end
end
 