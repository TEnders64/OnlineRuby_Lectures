class User < ActiveRecord::Base
  has_secure_password
  EMAIL_REGEX = /([^@]+)@((?:[-a-z0-9]+)[a-z]+)/i
  validates :first_name, :last_name, presence: true, length: {minimum: 2}
  validates :password, length: {minimum: 8}
  validates :email, format: {with: EMAIL_REGEX}, uniqueness: true

  before_save :lower_email
  def lower_email 
    self.email.downcase!
  end
  
end
