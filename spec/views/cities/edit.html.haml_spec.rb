require 'spec_helper'

describe "cities/edit" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :name => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cities_path(@city), :method => "post" do
      assert_select "input#city_name", :name => "city[name]"
      assert_select "input#city_country", :name => "city[country]"
    end
  end
end
