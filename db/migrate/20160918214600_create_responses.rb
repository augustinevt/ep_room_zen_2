class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.integer :result
      t.references :respondable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
