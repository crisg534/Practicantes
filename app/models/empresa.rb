class Empresa < ActiveRecord::Base
  attr_accessible :email, :nit, :nombre, :nombre_contacto, :telefono, :url
end
