class AddCompatibilityColumnToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :compatibility, :integer
  end
end
