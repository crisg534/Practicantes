require 'spec_helper'

describe "empresas/new" do
  before(:each) do
    assign(:empresa, stub_model(Empresa,
      :nombre => "MyString",
      :nit => 1,
      :telefono => 1,
      :email => "MyString",
      :url => "MyString",
      :nombre_contacto => "MyString"
    ).as_new_record)
  end

  it "renders new empresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => empresas_path, :method => "post" do
      assert_select "input#empresa_nombre", :name => "empresa[nombre]"
      assert_select "input#empresa_nit", :name => "empresa[nit]"
      assert_select "input#empresa_telefono", :name => "empresa[telefono]"
      assert_select "input#empresa_email", :name => "empresa[email]"
      assert_select "input#empresa_url", :name => "empresa[url]"
      assert_select "input#empresa_nombre_contacto", :name => "empresa[nombre_contacto]"
    end
  end
end
