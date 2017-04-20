class User < ActiveRecord::Base
  has_secure_password
  has_many :orders
  before_save :lower_email

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  
  def lower_email
    self.email.downcase!
  end
  
end
