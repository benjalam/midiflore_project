class AddRefToModels < ActiveRecord::Migration[5.0]
  def change
    add_reference :harvest_details, :harvest, index: true
    add_reference :harvest_details, :product, index: true
    add_reference :harvests, :employee, index: true
    add_reference :purchases, :supplier, index: true
    add_reference :purchase_details, :product, index: true
    add_reference :orders, :client, index: true
    add_reference :order_details, :order, index: true
    add_reference :order_details, :product, index: true
    add_reference :manual_details, :product, index: true
    add_reference :manual_details, :manual, index: true
    add_reference :inventory_transactions, :manual_details, index: true
    add_reference :inventory_transactions, :order_details, index: true
    add_reference :inventory_transactions, :purchase_details, index: true
    add_reference :inventory_transactions, :harvest_details, index: true
  end
end
