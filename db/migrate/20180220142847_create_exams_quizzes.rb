class CreateExamsQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :exams_quizzes, id: false do |t|
    	t.integer :quiz_id
    	t.integer :exam_id
   end

    add_index :exams_quizzes, :quiz_id
    add_index :exams_quizzes, :exam_id
  end
end