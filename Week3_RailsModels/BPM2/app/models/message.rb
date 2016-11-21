class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :author, :message, presence: true
  validates :author, :message, length: {minimum: 2}
end
