class UserController < ApplicationController
  before_action :status, except:[:index, :create, :login, :logout, :edit, :update, :show]


  def index
  end

  def users
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @secrets = @user.secrets
    @likes = @user.likes
  end

  def secret
    @user = User.find(params[:id])
    @secret = params
    # render json: @secret
    Secret.create(content: params[:secret], user: @user)
    redirect_to '/users'
  end

  def allsecrets
    @user = User.find(session[:user_id])
    @usersecrets = @user.secrets
    @userlikes = @user.likes
    # render json: @user
    @allsecrets = Secret.all
  end

  def like
    @secret = Secret.find(params[:id])
    @user = User.find(session[:user_id])
    Like.create(user: @user, secret: @secret)
    redirect_to '/allsecrets'
  end

  def unlike
    @secret = Secret.find(params[:id])
    @user = User.find(session[:user_id])
    Like.where(user_id:session[:user_id], secret_id:params[:id]).destroy_all
    redirect_to '/allsecrets'
  end


  def create
    user = User.create(fname: params[:fname], lname: params[:lname], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.valid?
      session[:id] = user[:id]
      redirect_to '/users'
    else
      flash[:msg] = user.errors.full_messages.to_sentence
      redirect_to '/'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update(fname: params[:fname], lname: params[:lname], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    redirect_to '/users'
  end

  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user[:id]
      redirect_to '/users'
    else
      flash[:msg] = "Either password or email was invalid. Please try again."
      redirect_to '/'
    end
  end

  def logout
    session.clear
    redirect_to "/"
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to '/users'
  end

  def delete
    @secret = Secret.find(params[:id]).destroy
    redirect_to '/allsecrets'
  end


  private

  def status
    if !session[:user_id]
      redirect_to '/'
    else
    end
  end

end
