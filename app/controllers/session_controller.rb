class SessionController < ApplicationController
    before_action :check_for_admin, :only => [:index]
  def new
      @user = User.new
  end

  def index
      @users =User.all
  end

  def create
    @user = User.find_by(email: session_params[:email])

    if @user && @user.authenticate(session_params[:password])
      login!
      render json: {
        logged_in: true,
        user: @user
      }
    else
      render json: {
        status: 401,
        errors: ['no such user', 'verify credentials and try again or signup']
      }
    end
  end
  def is_logged_in?
    if logged_in? && current_user
      render json: {
        logged_in: true,
        user: current_user
      }
      
    else
      render json: {
        logged_in: false,
        message: 'no such user'
      }
    end
  end

  def destroy
    logout!
    render json: {
      status: 200,
      logged_out: true
    }
  end

  private
    def session_params
    params.require(:user).permit(:name, :email, :password)
    end


  # def create
  #     # params[:email]
  #     # params[:password]
  #     user = User.find_by :email => params[:email]
  #     # find a user
  #     # if exists and the bcrypt(params[:password]) == password_digest
  #
  #     # if check_for_admin
  #     #     redirect_to root_path
  #
  #     if user.present? && user.authenticate(params[:password])
  #     # save the user in the session
  #     session[:user_id] = user.id
  #     redirect_to articles_path
  #     else
  #         flash[:error] = "Invalid username or password"
  #         redirect_to login_path #display error message
  #     end
  #   end
  #
  #   def destroy
  #       session[:user_id] = nil
  #       redirect_to login_path
  #   end
end
