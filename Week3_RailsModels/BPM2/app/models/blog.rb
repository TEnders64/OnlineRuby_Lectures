class Blog < ActiveRecord::Base
  has_many :users, through: :owners
  has_many :owners
  has_many :posts

  validates :name, :description, presence: true
  validates :name, length: {minimum: 5}
  validates :description, length: {in: 10..255}
end
