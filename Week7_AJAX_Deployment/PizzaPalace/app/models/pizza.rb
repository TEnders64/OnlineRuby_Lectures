class Pizza < ActiveRecord::Base
    has_many :orders, through: :order_has_pizzas
    has_many :order_has_pizzas
end
