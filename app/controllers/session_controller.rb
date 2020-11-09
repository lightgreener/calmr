class SessionController < ApplicationController
    before_action :check_for_admin, :only => [:index]
  def new
      @user = User.new
  end

  def index
      @users =User.all
  end

  def create
      # params[:email]
      # params[:password]
      user = User.find_by :email => params[:email]
      # find a user
      # if exists and the bcrypt(params[:password]) == password_digest

      # if check_for_admin
      #     redirect_to root_path

      if user.present? && user.authenticate(params[:password])
      # save the user in the session
      session[:user_id] = user.id
      redirect_to articles_path
      else
          flash[:error] = "Invalid username or password"
          redirect_to login_path #display error message
      end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
end
