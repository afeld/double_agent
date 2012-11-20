require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UserAgentsController do

  # This should return the minimal set of attributes required to create a valid
  # UserAgent. As you add validations to UserAgent, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "original" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserAgentsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all user_agents as @user_agents" do
      user_agent = UserAgent.create! valid_attributes
      get :index, {}, valid_session
      assigns(:user_agents).should eq([user_agent])
    end
  end

  describe "GET show" do
    it "assigns the requested user_agent as @user_agent" do
      user_agent = UserAgent.create! valid_attributes
      get :show, {:id => user_agent.to_param}, valid_session
      assigns(:user_agent).should eq(user_agent)
    end
  end

  describe "GET new" do
    it "assigns a new user_agent as @user_agent" do
      get :new, {}, valid_session
      assigns(:user_agent).should be_a_new(UserAgent)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_agent as @user_agent" do
      user_agent = UserAgent.create! valid_attributes
      get :edit, {:id => user_agent.to_param}, valid_session
      assigns(:user_agent).should eq(user_agent)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserAgent" do
        expect {
          post :create, {:user_agent => valid_attributes}, valid_session
        }.to change(UserAgent, :count).by(1)
      end

      it "assigns a newly created user_agent as @user_agent" do
        post :create, {:user_agent => valid_attributes}, valid_session
        assigns(:user_agent).should be_a(UserAgent)
        assigns(:user_agent).should be_persisted
      end

      it "redirects to the created user_agent" do
        post :create, {:user_agent => valid_attributes}, valid_session
        response.should redirect_to(UserAgent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_agent as @user_agent" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserAgent.any_instance.stub(:save).and_return(false)
        post :create, {:user_agent => { "original" => "invalid value" }}, valid_session
        assigns(:user_agent).should be_a_new(UserAgent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserAgent.any_instance.stub(:save).and_return(false)
        post :create, {:user_agent => { "original" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_agent" do
        user_agent = UserAgent.create! valid_attributes
        # Assuming there are no other user_agents in the database, this
        # specifies that the UserAgent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UserAgent.any_instance.should_receive(:update_attributes).with({ "original" => "MyString" })
        put :update, {:id => user_agent.to_param, :user_agent => { "original" => "MyString" }}, valid_session
      end

      it "assigns the requested user_agent as @user_agent" do
        user_agent = UserAgent.create! valid_attributes
        put :update, {:id => user_agent.to_param, :user_agent => valid_attributes}, valid_session
        assigns(:user_agent).should eq(user_agent)
      end

      it "redirects to the user_agent" do
        user_agent = UserAgent.create! valid_attributes
        put :update, {:id => user_agent.to_param, :user_agent => valid_attributes}, valid_session
        response.should redirect_to(user_agent)
      end
    end

    describe "with invalid params" do
      it "assigns the user_agent as @user_agent" do
        user_agent = UserAgent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserAgent.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_agent.to_param, :user_agent => { "original" => "invalid value" }}, valid_session
        assigns(:user_agent).should eq(user_agent)
      end

      it "re-renders the 'edit' template" do
        user_agent = UserAgent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserAgent.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_agent.to_param, :user_agent => { "original" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_agent" do
      user_agent = UserAgent.create! valid_attributes
      expect {
        delete :destroy, {:id => user_agent.to_param}, valid_session
      }.to change(UserAgent, :count).by(-1)
    end

    it "redirects to the user_agents list" do
      user_agent = UserAgent.create! valid_attributes
      delete :destroy, {:id => user_agent.to_param}, valid_session
      response.should redirect_to(user_agents_url)
    end
  end

end
