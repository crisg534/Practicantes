require 'spec_helper'

describe "enterprises/show" do
  before(:each) do
    @enterprise = assign(:enterprise, stub_model(Enterprise,
      :name => "Name",
      :nit => 1,
      :address => "Address",
      :phone => 2,
      :email => "Email",
      :url => "Url",
      :contact_name => "Contact Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Address/)
    rendered.should match(/2/)
    rendered.should match(/Email/)
    rendered.should match(/Url/)
    rendered.should match(/Contact Name/)
  end
end
