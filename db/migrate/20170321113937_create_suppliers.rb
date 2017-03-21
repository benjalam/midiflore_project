class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :adress
      t.string :contact_info

      t.timestamps
    end
  end
end
