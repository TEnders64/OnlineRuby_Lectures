class AddQtyToOrdersHasPizza < ActiveRecord::Migration
  def change
    add_column :order_has_pizzas, :qty, :int
  end
end
