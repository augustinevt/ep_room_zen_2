class AddAvatarToHouses < ActiveRecord::Migration[5.0]
  def change
    change_table(:houses) do |t|
      t.attachment :avatar
    end
  end
end
