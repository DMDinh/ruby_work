class User < ApplicationRecord
  has_many :secrets
  has_many :likes, dependent: :destroy
  # has_many :secrets, through: :likes
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :lname, length: {minimum: 2}, presence: true
  validates :fname, length: {minimum: 2}, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, length: {minimum: 8}, presence: true

end
