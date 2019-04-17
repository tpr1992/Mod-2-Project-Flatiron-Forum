class LoginController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && BCrypt::Password.new(@user.password_digest) == params[:password]
      session[:user_id] = @user.id
      redirect_to sections_path
      #  @user.authenticate(params.permit(:password))
      # session[:user_id] = @user.id
      # redirect_to sections_path
    else
      # flash["error"] = "Your username or password was incorrect"
      # redirect_to new_login_path
      render :new
    end
  end


  def destroy
    log_out
    redirect_to sections_path
  end

end
