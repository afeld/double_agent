require 'spec_helper'

describe "user_agents/show" do
  before(:each) do
    @user_agent = assign(:user_agent, stub_model(UserAgent,
      :original => "Original",
      :visits => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Original/)
    rendered.should match(/1/)
  end
end
