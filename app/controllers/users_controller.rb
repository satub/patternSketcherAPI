class UsersController < ApplicationController

  skip_before_action :authenticate

  def create
    # binding.pry
    @user = User.create(user_params)

    if @user.errors.empty?
      render json: {user: {user_name: @user.user_name, user_id: @user.id}, msg: 'signing up successful'}
      #redirect to auth for token
    else
      ##hash this sucker and shove it back to frontEnd
      render json: {err: @user.errors.full_messages[0]}, status: 422
    end
  end

  private
    def user_params
      params.require(:user).permit(:user_name, :password, :password_confirmation)
    end

end
