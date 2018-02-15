class CreateTableQuestionsQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :questions_quizzes do |t|
      t.integer :question_id
      t.integer :quiz_id
    end

    add_index :questions_quizzes, :question_id
    add_index :questions_quizzes, :quiz_id
  end
end
