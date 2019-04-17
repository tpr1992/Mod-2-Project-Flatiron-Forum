class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params(:username, :password_digest))
    @user.save
    if @user.valid?
      redirect_to user_path(@user)
    else
      render :new
    end
  end


private

def user_params(*args)
  params.require(:user).permit(*args)
end


end
