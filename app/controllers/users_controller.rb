class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @sorted_replies = @user.replies.order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    # @user.save
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
      # render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end
