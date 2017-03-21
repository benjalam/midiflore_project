class CreateHarvests < ActiveRecord::Migration[5.0]
  def change
    create_table :harvests do |t|
      t.date :date
      t.string :total
      t.references :employees, foreign_key: true

      t.timestamps
    end
  end
end
