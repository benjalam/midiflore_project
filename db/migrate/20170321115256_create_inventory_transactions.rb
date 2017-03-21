class CreateInventoryTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :inventory_transactions do |t|
      t.references :products, foreign_key: true
      t.references :harvests, foreign_key: true
      t.references :orders_details, foreign_key: true
      t.references :purchases_details, foreign_key: true
      t.references :manuals_details, foreign_key: true
      t.string :quantity

      t.timestamps
    end
  end
end
