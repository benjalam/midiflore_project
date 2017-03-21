class OrderDetail < ApplicationRecord
  belongs_to :product
  belongs_to :order
  has_many :inventory_transactions
end
