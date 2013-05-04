class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :role
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
  validates :password, presence: true
  has_secure_password
  has_one :tutor_info

  ROLES = %w[student tutor]
end
