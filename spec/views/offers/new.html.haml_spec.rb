require 'spec_helper'

describe "offers/new" do
  before(:each) do
    assign(:offer, stub_model(Offer,
      :enterprise_id => 1,
      :name => "MyString",
      :description => "MyString",
      :city_id => 1
    ).as_new_record)
  end

  it "renders new offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path, :method => "post" do
      assert_select "input#offer_enterprise_id", :name => "offer[enterprise_id]"
      assert_select "input#offer_name", :name => "offer[name]"
      assert_select "input#offer_description", :name => "offer[description]"
      assert_select "input#offer_city_id", :name => "offer[city_id]"
    end
  end
end
