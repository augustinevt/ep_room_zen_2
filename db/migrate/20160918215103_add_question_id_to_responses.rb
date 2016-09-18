class AddQuestionIdToResponses < ActiveRecord::Migration[5.0]
  def change
    change_table(:responses) do |t|
      t.references :question
    end
  end
end
