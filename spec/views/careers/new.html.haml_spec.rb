require 'spec_helper'

describe "careers/new" do
  before(:each) do
    assign(:career, stub_model(Career,
      :name => "MyString",
      :area_id => 1
    ).as_new_record)
  end

  it "renders new career form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => careers_path, :method => "post" do
      assert_select "input#career_name", :name => "career[name]"
      assert_select "input#career_area_id", :name => "career[area_id]"
    end
  end
end
