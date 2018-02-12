class CreateTableAnswersQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :answers_questions, id: false do |t|
      t.integer :question_id
      t.integer :answer_id
    end

    add_index :answers_questions, :question_id
    add_index :answers_questions, :answer_id
  end
end
