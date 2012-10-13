class Student < ActiveRecord::Base
  attr_accessible :availability, :city_id, :college, :email, :name, :phone
end
