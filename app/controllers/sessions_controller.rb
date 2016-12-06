class SessionsController < ApplicationController

  skip_before_action :authenticate

  def create
    user = User.find_by(user_name: auth_params[:user_name])
    if user.authenticate(auth_params[:password])
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
    else
    end
  end

  private
    def auth_params
      params.require(:auth).permit(:user_name, :password)
    end
