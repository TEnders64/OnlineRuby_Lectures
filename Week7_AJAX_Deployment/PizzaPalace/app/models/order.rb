class Order < ActiveRecord::Base
  belongs_to :user
  has_many :pizzas, through: :order_has_pizzas
  has_many :order_has_pizzas
end
