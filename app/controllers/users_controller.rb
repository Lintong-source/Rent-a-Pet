class UsersController < ApplicationController
  def profile
    params[:username]
  end

  def destroy
    sign_out(current_user)
      redirect_to root_path, notice: "You have successfully logged out."
  end

  def show
    @user = current_user
    @pets = current_user.pets
    @bookings = current_user.bookings
  end
end
