class AddTitleToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :title, :string
    add_column :questions, :string, :string
  end
end
