class Product < ActiveRecord::Base
  belongs_to :user
  validates :name, :price, presence: true
end
