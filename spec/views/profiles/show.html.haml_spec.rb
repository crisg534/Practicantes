require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :name => "Name",
      :career_id => 1,
      :skills => "Skills"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Skills/)
  end
end
