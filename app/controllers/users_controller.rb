class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :get_user, only: [:edit, :update, :show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @errors = flash[:errors]
  end

  def create
    byebug
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
    @user.update(name: params[:user][:name], username: params[:user][:username], password: params[:user][:password], bio: params[:user][:bio])
    # @user.update(user_params)
    # byebug
    redirect_to user_path(@user.id)
  end

  def show
    # @unfollowing_user = User.find(params[:id])
    # byebug
  end

  private 

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :password, :bio)
  end

end
