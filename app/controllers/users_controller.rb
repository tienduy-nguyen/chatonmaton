class UsersController < ApplicationController

  # GET account/profile --> new
  def profile
    @user = current_user
  end


  # PUT account/profile --> update
  def update_profile
    if @user.update(user_params)
      flash[:success] = "Update user profile succesfully!"
      redirect_back(fallback_location: root_path)
    else
      @user.errors.full_messages.each do |message|
        flash[:error] = message
      end
      render :profile
    end

  end

  def secret 
    
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

