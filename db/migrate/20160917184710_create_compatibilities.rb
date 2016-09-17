class CreateCompatibilities < ActiveRecord::Migration[5.0]
  def change
    create_table :compatibilities do |t|
      t.references :user_profile, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
