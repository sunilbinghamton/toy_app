class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #p "User login successful"
      redirect_to root_url, :notice => "Login Successful"
      #flash[:success] = 'Login Successful'
    else
      #p "User login failure"
      redirect_to login_path, :notice => "Oops!! Invalid Username/Password. Please try again"
    end
  end  

  def destroy
    log_out
    redirect_to root_url
  end
end