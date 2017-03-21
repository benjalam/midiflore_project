class Product < ApplicationRecord
  has_many :harvest_details
  has_many :purchase_details
  has_many :order_details
  has_many :manual_details
  has_many :inventory_transactions
end
