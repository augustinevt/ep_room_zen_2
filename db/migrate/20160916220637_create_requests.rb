class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :house_id
      t.string :message

      t.timestamps
    end
  end
end
