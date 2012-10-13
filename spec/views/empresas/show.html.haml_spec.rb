require 'spec_helper'

describe "empresas/show" do
  before(:each) do
    @empresa = assign(:empresa, stub_model(Empresa,
      :nombre => "Nombre",
      :nit => 1,
      :telefono => 2,
      :email => "Email",
      :url => "Url",
      :nombre_contacto => "Nombre Contacto"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Email/)
    rendered.should match(/Url/)
    rendered.should match(/Nombre Contacto/)
  end
end
