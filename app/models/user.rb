class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_if :email

  # takes a user and password
  def self.confirm
  end
end
