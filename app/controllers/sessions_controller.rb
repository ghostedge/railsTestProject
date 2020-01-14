class SessionsController < ApplicationController
  def new
  end
  
  def create
   user = User.find_by(name: user_params[:name]).try(:authenticate, user_params[:password])
   if user
    redirect_to searchpage_home_url(user:user.name)
   else
    flash.now[:login_error] = "invalid username or password"
    render "new"
   end
  end
  def destroy
    @current_user = nil
    redirect_to searchpage_home_url
  end
  
  
  private
   def user_params
    params.require(:session).permit(:name, :password)
   end
 end