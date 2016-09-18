class RenameResultToValue < ActiveRecord::Migration[5.0]
  def change
    rename_column :responses, :result, :value
  end
end
