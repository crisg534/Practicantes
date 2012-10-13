require 'spec_helper'

describe "offers/show" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :enterprise_id => 1,
      :name => "Name",
      :description => "Description",
      :city_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/2/)
  end
end
