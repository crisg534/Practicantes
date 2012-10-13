require 'spec_helper'

describe "empresas/index" do
  before(:each) do
    assign(:empresas, [
      stub_model(Empresa,
        :nombre => "Nombre",
        :nit => 1,
        :telefono => 2,
        :email => "Email",
        :url => "Url",
        :nombre_contacto => "Nombre Contacto"
      ),
      stub_model(Empresa,
        :nombre => "Nombre",
        :nit => 1,
        :telefono => 2,
        :email => "Email",
        :url => "Url",
        :nombre_contacto => "Nombre Contacto"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre Contacto".to_s, :count => 2
  end
end
