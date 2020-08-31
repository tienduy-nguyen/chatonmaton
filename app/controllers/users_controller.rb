class UsersController < ApplicationController

  # GET account/profile --> new
  def profile
    @user = current_user
  end


  # PUT account/profile --> update
  def updateProfile
    @user.update(user_params)

  end



  private
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :zip_code,
      :adress
    )
  end
  
end

