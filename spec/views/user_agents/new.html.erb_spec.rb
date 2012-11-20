require 'spec_helper'

describe "user_agents/new" do
  before(:each) do
    assign(:user_agent, stub_model(UserAgent,
      :original => "MyString",
      :visits => 1
    ).as_new_record)
  end

  it "renders new user_agent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_agents_path, :method => "post" do
      assert_select "input#user_agent_original", :name => "user_agent[original]"
      assert_select "input#user_agent_visits", :name => "user_agent[visits]"
    end
  end
end
