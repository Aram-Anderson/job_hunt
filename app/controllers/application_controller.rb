class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_user

  helper_method :current_user,
                :require_user

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def require_user
    unless current_user
      flash[:notice] = "You Must Log in to View this Page"
      redirect_to login_path
    end
  end

end
