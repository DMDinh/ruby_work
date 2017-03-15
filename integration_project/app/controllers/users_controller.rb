class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to "/users"
  end

  def show
    session = params[:id]
    user = User.find(session)
    render text: user.name
  end

  def edit
    @user = User.find(1)
    render "edit.html"

  end

  def total
    @user = User.count
    render json: @user
  end


end
