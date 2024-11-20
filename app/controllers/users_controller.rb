class UsersController < ApplicationController
  def profile
    params[:username]
  end

  def destroy
    sign_out(current_user)
      redirect_to root_path, notice: "You have successfully logged out."
  end
end
