require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "MyString",
      :college => "MyString",
      :availability => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :city_id => 1
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path(@student), :method => "post" do
      assert_select "input#student_name", :name => "student[name]"
      assert_select "input#student_college", :name => "student[college]"
      assert_select "input#student_availability", :name => "student[availability]"
      assert_select "input#student_email", :name => "student[email]"
      assert_select "input#student_phone", :name => "student[phone]"
      assert_select "input#student_city_id", :name => "student[city_id]"
    end
  end
end
