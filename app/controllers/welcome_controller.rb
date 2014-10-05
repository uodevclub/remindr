class WelcomeController < ApplicationController
  def index
  end

  def post
  	# get input
  	@quantity = params[:email]
  	
  	# save to db
  	@user = EmailList.create(email:"#{@quantity}")
 
  	# validation
  	
  	# flash a sucess msg
  	flash[:notice] = "thanks! we'll let you know as soon as we launch!"
  	render 'index'
  end
end
