class PurchaseDetail < ApplicationRecord
  belongs_to :purchase
  belongs_to :product
  has_many :inventory_transactions
end
