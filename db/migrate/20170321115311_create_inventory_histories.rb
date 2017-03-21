class CreateInventoryHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventory_histories do |t|
      t.string :date
      t.jsonb :stock

      t.timestamps
    end
  end
end
