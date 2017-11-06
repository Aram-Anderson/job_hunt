class SessionsController < ApplicationController
  skip_before_action :require_user

  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      flash[:notice] = "Successfully logged in as #{user.first_name}"
      redirect_to dashboard_index_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
