class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @posts = @user.posts
  end

  #def new
  #end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      puts "User created"
    else
      return "Please enter correct information"
    end
  end

  #def update
  #end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end
end
