require 'spec_helper'

describe "user_agents/index" do
  before(:each) do
    assign(:user_agents, [
      stub_model(UserAgent,
        :original => "Original",
        :visits => 1
      ),
      stub_model(UserAgent,
        :original => "Original",
        :visits => 1
      )
    ])
  end

  it "renders a list of user_agents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Original".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
