class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.text :answer
      t.string :colour
    end
  end
end
