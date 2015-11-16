class SessionsController < ApplicationController


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

  # def create
  #   case params[:sessions][:type]
  #   when "Mediator"
  #     mediator = Mediator.find_by_email(set_params[:email])
  #       if mediator && mediator.authenticate(set_params[:password])
  #         session[:user_id] = mediator.id
  #
  #       redirect_to mediator_path #TODO: MAKE VIEW FOR MEDIATORS!
  #       else
  #         redirect_to root, alert: "Login failed. Wrong email/password combination."
  #       end
  #   end
  #
  #   when "Parent"
  #     parent = Parent.find_by_email(set_params[:email])
  #     if parent && parent.authenticate(set_params[:password])
  #       session[:user_id] = parent.id
  #
  #     redirect_to parent_path #TODO: MAKE VIEW FOR PARENT
  #     else
  #       redirect_to root, alert: "Login failed. Wrong email/password combination."
  #     end
  #   end
  # end

  def destroy
    session[:user_id] = nil
    session[:type] = nil
    redirect_to root, alert: "You have been logged out."
  end

end
