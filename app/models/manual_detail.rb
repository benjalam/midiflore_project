class ManualDetail < ApplicationRecord
  belongs_to :product
  belongs_to :manual
  has_many :invetory_transactions
end
