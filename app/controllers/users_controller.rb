class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
      @user =User.find params[:id]
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    #
    @user = User.find params[:id]

  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

      if @user.save
          render :json => @user
      else
          render :json => @user.errors
      end
  end


  def update
      if @user.update(user_params)
          render :json => @user
      else
       render :json => @user.errors
      end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
      render :json => @user
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation, :resevation_id, :admin)
    end
