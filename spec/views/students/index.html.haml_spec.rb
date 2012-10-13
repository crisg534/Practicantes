require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :name => "Name",
        :college => "College",
        :availability => "Availability",
        :email => "Email",
        :phone => "Phone",
        :city_id => 1
      ),
      stub_model(Student,
        :name => "Name",
        :college => "College",
        :availability => "Availability",
        :email => "Email",
        :phone => "Phone",
        :city_id => 1
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "College".to_s, :count => 2
    assert_select "tr>td", :text => "Availability".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
