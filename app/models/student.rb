class Student < ActiveRecord::Base
  
  # Relations
  has_many :student_profiles
  has_many :profiles, through: :student_profile

  belongs_to :career

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
  				  :availability, :city_id, :college, :email, :name, :phone 

end
