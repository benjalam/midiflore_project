class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.string :quantity
      t.string :price
      t.references :products, foreign_key: true
      t.references :orders, foreign_key: true

      t.timestamps
    end
  end
end
