class CreatePurchaseDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :purchase_details do |t|
      t.string :quantity
      t.string :price
      t.references :purchase, foreign_key: true

      t.timestamps
    end
  end
end
