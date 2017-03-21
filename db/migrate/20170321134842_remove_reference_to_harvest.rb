class RemoveReferenceToHarvest < ActiveRecord::Migration[5.0]
    remove_reference :harvests, :employees
  def change
  end
end
