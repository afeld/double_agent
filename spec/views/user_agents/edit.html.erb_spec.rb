require 'spec_helper'

describe "user_agents/edit" do
  before(:each) do
    @user_agent = assign(:user_agent, stub_model(UserAgent,
      :original => "MyString",
      :visits => 1
    ))
  end

  it "renders the edit user_agent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_agents_path(@user_agent), :method => "post" do
      assert_select "input#user_agent_original", :name => "user_agent[original]"
      assert_select "input#user_agent_visits", :name => "user_agent[visits]"
    end
  end
end
