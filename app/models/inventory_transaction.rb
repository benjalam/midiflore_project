class InventoryTransaction < ApplicationRecord
  belongs_to :products
  belongs_to :harvests
  belongs_to :orders_details
  belongs_to :purchases_details
  belongs_to :manuals_details
end
