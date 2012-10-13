class Enterprise < ActiveRecord::Base
  attr_accessible :address, :contact_name, :email, :name, :nit, :phone, :url
end
