require 'spec_helper'

describe "offers/edit" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :enterprise_id => 1,
      :name => "MyString",
      :description => "MyString",
      :city_id => 1
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path(@offer), :method => "post" do
      assert_select "input#offer_enterprise_id", :name => "offer[enterprise_id]"
      assert_select "input#offer_name", :name => "offer[name]"
      assert_select "input#offer_description", :name => "offer[description]"
      assert_select "input#offer_city_id", :name => "offer[city_id]"
    end
  end
end
