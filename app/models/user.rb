class User < ApplicationRecord
  has_secure_password
  has_secure_token

  validates_uniqueness_of :email
  validates_presence_of :email
  validates_presence_of :name
end
