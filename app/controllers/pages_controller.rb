class PagesController < ApplicationController

  def signin
    session[:user_id] = params[:id_usuario]
  end

  def homepage
    @user_id = session[:user_id]
    @team_id = Student.find(@user_id).team_id
  end

  def search
    @teams = Team.search(params[:search])
    @tools = Tool.search(params[:search])
  end
end
