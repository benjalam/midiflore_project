class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :SKU
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
