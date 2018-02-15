class AddColumnExamIdToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :exam_id, :integer
  end
end
