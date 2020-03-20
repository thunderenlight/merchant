class SessionsController < ApplicationController

  def create
  	#auth_hash = request.env["omniauth.auth"]
  	#render :text => auth_hash.inspect, content_type: 'text/plain', layout: false
    @user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = @user.id
    load_order
    @order.update_attributes(user: @user)
    redirect_to products_path, notice: "logged in as #{@user.name}"
  end

  def destroy
  	session.delete(:user_id)
  	session.delete(:order_id)
  	
  	redirect_to root_path , notice: "See ya!"
  end
  
end
