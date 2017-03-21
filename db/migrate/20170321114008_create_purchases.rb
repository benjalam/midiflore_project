class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.date :date
      t.string :total
      t.references :suppliers, foreign_key: true
      t.references :products, foreign_key: true

      t.timestamps
    end
  end
end
