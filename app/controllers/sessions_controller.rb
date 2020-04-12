class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
    @user = current_user
  end

  def create
    @session = Session.new(session_params)
    @session[:user_id] = current_user.id
    if @session.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:date, :time, :hours, :minutes, :seconds, :workout_type, :notes)
  end
end
