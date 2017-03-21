class CreateInventoryTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :inventory_transactions do |t|
      t.references :products, foreign_key: true
      t.references :harvests, foreign_key: true
      t.references :order_detail, foreign_key: true
      t.references :purchase_details, foreign_key: true
      t.references :manual_details, foreign_key: true
      t.string :quantity

      t.timestamps
    end
  end
end
