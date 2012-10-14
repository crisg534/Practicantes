# == Schema Information
#
# Table name: students
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  college                :string(255)
#  availability           :string(255)
#  email                  :string(255)
#  phone                  :string(255)
#  city_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

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
  				  :availability, :city_id, :college, :name, :phone 

end
