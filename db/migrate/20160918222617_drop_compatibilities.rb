class DropCompatibilities < ActiveRecord::Migration[5.0]
  def change
    drop_table :compatibilities
  end
end
