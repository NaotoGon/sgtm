class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path(current_user)
    else
      redirect_to edit_user_registration_path(current_user)
    end
  end

  def show
    @user = current_user
  end


  private

  def user_params
    params.require(:user).permit(:nickname, :lang_1, :lang_2, :lang_3, :email)
  end

end
