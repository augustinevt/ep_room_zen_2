class AddResponseToCompatibility < ActiveRecord::Migration[5.0]
  def change
    add_column :compatibilities, :response, :integer
  end
end
