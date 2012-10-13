require 'spec_helper'

describe "enterprises/index" do
  before(:each) do
    assign(:enterprises, [
      stub_model(Enterprise,
        :name => "Name",
        :nit => 1,
        :address => "Address",
        :phone => 2,
        :email => "Email",
        :url => "Url",
        :contact_name => "Contact Name"
      ),
      stub_model(Enterprise,
        :name => "Name",
        :nit => 1,
        :address => "Address",
        :phone => 2,
        :email => "Email",
        :url => "Url",
        :contact_name => "Contact Name"
      )
    ])
  end

  it "renders a list of enterprises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
  end
end
