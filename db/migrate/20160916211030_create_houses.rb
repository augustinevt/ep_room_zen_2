class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
