class UserAgentsController < ApplicationController
  # GET /user_agents
  # GET /user_agents.json
  def index
    @user_agents = UserAgent.all

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

  # GET /user_agents/new
  # GET /user_agents/new.json
  def new
    @user_agent = UserAgent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_agent }
    end
  end

  # GET /user_agents/1/edit
  def edit
    @user_agent = UserAgent.find(params[:id])
  end

  # POST /user_agents
  # POST /user_agents.json
  def create
    @user_agent = UserAgent.new(params[:user_agent])

    respond_to do |format|
      if @user_agent.save
        format.html { redirect_to @user_agent, notice: 'User agent was successfully created.' }
        format.json { render json: @user_agent, status: :created, location: @user_agent }
      else
        format.html { render action: "new" }
        format.json { render json: @user_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_agents/1
  # PUT /user_agents/1.json
  def update
    @user_agent = UserAgent.find(params[:id])

    respond_to do |format|
      if @user_agent.update_attributes(params[:user_agent])
        format.html { redirect_to @user_agent, notice: 'User agent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_agents/1
  # DELETE /user_agents/1.json
  def destroy
    @user_agent = UserAgent.find(params[:id])
    @user_agent.destroy

    respond_to do |format|
      format.html { redirect_to user_agents_url }
      format.json { head :no_content }
    end
  end
end
