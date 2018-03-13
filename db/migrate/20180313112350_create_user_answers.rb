class CreateUserAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_answers do |t|
      t.integer :answer_id
      t.integer :user_id
    end
  end
end
