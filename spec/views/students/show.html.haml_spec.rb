require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "Name",
      :college => "College",
      :availability => "Availability",
      :email => "Email",
      :phone => "Phone",
      :city_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/College/)
    rendered.should match(/Availability/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/1/)
  end
end
