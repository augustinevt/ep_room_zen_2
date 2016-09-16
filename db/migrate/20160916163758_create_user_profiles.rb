class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :user_id
      t.attachment :avatar

      t.timestamps
    end
  end
end
