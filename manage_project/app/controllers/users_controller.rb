class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
    # render json: @user
  end

  def create
    User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    # @user = (first_name = params[:first_name], last_name= params[:last_name], email = params[:email], password = params[:password])
    # render json: @user
    redirect_to "/users"
  end

  def editinfo
    User.find(params[:id]).update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])

    redirect_to "/users"
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/users'
  end

end
