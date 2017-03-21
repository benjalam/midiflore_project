class RemoveReferenceToOrders < ActiveRecord::Migration[5.0]
  def change
    remove_reference :orders, :clients
  end
end
