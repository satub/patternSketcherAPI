class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  before_action :authenticate

  def logged_in?
    !!current_user
  end

  def current_user
    if auth_present?
      user = User.find(auth["user"])
      if user
        @current_user ||= user
      end
    end
  end

  def authenticate
    render json: {error: "unauthorized"}, status: 401 unless logged_in?
  end

  private

    def token
      request.env["HTTP_AUTHORIZATION"].scan(/Bearer(.*)$/).flatten.last
    end

    def auth
      Auth.decode(token)
    end
    def auth_present?
      !!request.env.fetch("HTTP_AUTHORIZATION","").scan(/Bearer/).flatten.first
    end

end
