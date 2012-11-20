require "spec_helper"

describe UserAgentsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_agents").should route_to("user_agents#index")
    end

    it "routes to #new" do
      get("/user_agents/new").should route_to("user_agents#new")
    end

    it "routes to #show" do
      get("/user_agents/1").should route_to("user_agents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_agents/1/edit").should route_to("user_agents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_agents").should route_to("user_agents#create")
    end

    it "routes to #update" do
      put("/user_agents/1").should route_to("user_agents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_agents/1").should route_to("user_agents#destroy", :id => "1")
    end

  end
end
