class WelcomeController < ApplicationController
  def index
  end

  def post
  	# get input
  	@quantity = params[:email]
  	flash[:notice] = "#{@quantity}"
  	@user = EmailList.create(email:"#{@quantity}")
 
  
  	# save to db
  	# flash a sucess msg
  	render 'index'
  end
end
