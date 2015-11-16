class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery

  layout "application", except: [:index, :home]

#FOR TESTING PURPOSES: -----------------------
  # before_filter :log_parent_in

  # def require_mediator
  #   if !User.find(session[:user_id]).is_a?(Mediator)
  #     redirect_to root_path, notice: "This area is for mediators only"
  #   end
  # end

  # def log_parent_in
  #   session[:user_id] = User.first.id
  # end

  # skip_before_action :verify_authenticity_token, if: :json_request?

# --------------------------------------------



  def logged_in_user
    @logged_in_user = User.find(session[:user_id]) 
  end

  def json_request?
    request.format.json?
  end
end
