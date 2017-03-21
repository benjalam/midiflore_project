class Harvest < ApplicationRecord
  belongs_to :employee
  has_many :harvest_details
end
