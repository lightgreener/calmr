class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!
    def login!
    session[:user_id] = @user.id
    end
    def logged_in?
    !!session[:user_id]
    end
    def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    def authorized_user?
     @user == current_user
    end
    def logout!
     session.clear
    end

      before_action :fetch_user
      private
      def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present?
      end

      def check_for_login
        redirect_to login_path unless @current_user.present?
      end

      def check_for_admin
        redirect_to root_path unless @current_user.present? && @current_user.admin?
      end

end
