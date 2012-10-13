require 'spec_helper'

describe "enterprises/edit" do
  before(:each) do
    @enterprise = assign(:enterprise, stub_model(Enterprise,
      :name => "MyString",
      :nit => 1,
      :address => "MyString",
      :phone => 1,
      :email => "MyString",
      :url => "MyString",
      :contact_name => "MyString"
    ))
  end

  it "renders the edit enterprise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enterprises_path(@enterprise), :method => "post" do
      assert_select "input#enterprise_name", :name => "enterprise[name]"
      assert_select "input#enterprise_nit", :name => "enterprise[nit]"
      assert_select "input#enterprise_address", :name => "enterprise[address]"
      assert_select "input#enterprise_phone", :name => "enterprise[phone]"
      assert_select "input#enterprise_email", :name => "enterprise[email]"
      assert_select "input#enterprise_url", :name => "enterprise[url]"
      assert_select "input#enterprise_contact_name", :name => "enterprise[contact_name]"
    end
  end
end
