class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

  # takes a user and password
  def self.confirm
  end
end
