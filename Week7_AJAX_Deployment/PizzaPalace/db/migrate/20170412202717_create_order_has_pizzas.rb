class CreateOrderHasPizzas < ActiveRecord::Migration
  def change
    create_table :order_has_pizzas do |t|
      t.references :order, index: true, foreign_key: true
      t.references :pizza, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
