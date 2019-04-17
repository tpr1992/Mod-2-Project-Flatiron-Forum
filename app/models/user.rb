class User < ApplicationRecord
  has_many :posts
  has_many :replies
  has_secure_password

  validates_uniqueness_of :username
  validates :username, presence: true
  validates :password_digest, presence: true
end
