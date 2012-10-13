require 'spec_helper'

describe "careers/edit" do
  before(:each) do
    @career = assign(:career, stub_model(Career,
      :name => "MyString",
      :area_id => 1
    ))
  end

  it "renders the edit career form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => careers_path(@career), :method => "post" do
      assert_select "input#career_name", :name => "career[name]"
      assert_select "input#career_area_id", :name => "career[area_id]"
    end
  end
end
