class User < ActiveRecord::Base
  has_secure_password
  has_one :picture
  validates_presence_of :username, :email, :password
  validates_uniqueness_of :username, :email
end
