class UsersController < ApplicationController

  skip_before_action :authenticate

  def create
    binding.pry
    @user = User.create(user_params)

    if @user.errors.empty?
      #redirect to auth for token
    else
      ##hash this sucker and shove it back to frontEnd
      @user.errors.full_messages[0]
    end
  end

  private
    def user_params
      params.require(:user).permit(:user_name, :password, :password_confirmation)
    end

end
