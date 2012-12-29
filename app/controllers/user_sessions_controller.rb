class UserSessionsController < ApplicationController
  
  def new
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new(params[:user_session])

  	if @user_session.save
  		flash[:notice] = "Welcome to EasyJobs"
  		redirect_to jobs_url
  	else
  		render action: new
  	end
  end

  # puede que current_user_session dé nil y al hacer destroy dé problema, 
  # así que vamos a hacerlo visible sólo para la gente que esté logueada
  # con el 'current_user_session &&' delante
  def destroy
  	current_user_session && current_user_session.destroy
  	flash[:notice] = "You are now logged out"
    redirect_to jobs_url
  end
end
