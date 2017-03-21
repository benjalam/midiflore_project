class CreateHarvestDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :harvest_details do |t|
      t.string :quantity
      t.string :time
      t.references :products, foreign_key: true
      t.references :harvests, foreign_key: true

      t.timestamps
    end
  end
end
