class User < ActiveRecord::Base
  has_secure_password
  has_many :restaurants
  has_many :reviews
  validates_presence_of :username, :email, :password
  validates_uniqueness_of :username, :email
end
