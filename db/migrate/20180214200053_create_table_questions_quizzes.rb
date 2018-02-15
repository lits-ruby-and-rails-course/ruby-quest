class CreateTableQuestionsQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :questions_quizzes do |t|
      t.integer :question_id
      t.integer :quiz_id
    end

    add_index :answers_questions, :question_id
    add_index :answers_questions, :answer_id
  end
end
