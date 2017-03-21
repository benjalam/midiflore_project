class CreateManuals < ActiveRecord::Migration[5.0]
  def change
    create_table :manuals do |t|
      t.string :date
      t.string :total

      t.timestamps
    end
  end
end
