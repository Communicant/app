class SessionsController < ApplicationController

  def new
    redirect_to root_path
  end

  def create
    user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        if user.is_a?(Parent)
          redirect_to events_path
        elsif user.is_a?(Mediator)
          redirect_to profiles_path, notice: "You have been successfully logged in."
        end
      else
        flash[:warning] = 'Wrong email/password combination.'
        redirect_to root_path
      end
  end

  def new
    redirect_to root_path
  end


  def destroy
    session[:user_id] = nil
    session[:type] = nil
    redirect_to root_path, alert: "You have been logged out."
  end


end
