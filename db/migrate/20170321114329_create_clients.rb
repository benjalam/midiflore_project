class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :adress
      t.string :contact_info

      t.timestamps
    end
  end
end
