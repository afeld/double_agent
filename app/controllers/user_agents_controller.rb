class UserAgentsController < ApplicationController
  # GET /user_agents
  # GET /user_agents.json
  def index
    @user_agents = UserAgent.order('last_seen_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_agents }
    end
  end

  # GET /user_agents/1
  # GET /user_agents/1.json
  def show
    @user_agent = UserAgent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_agent }
    end
  end
end
