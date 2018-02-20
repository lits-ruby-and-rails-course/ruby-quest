class ChangeColumnsType < ActiveRecord::Migration[5.1]
  def change
    change_column :exams, :start_time, :datetime
    change_column :exams, :end_time, :datetime
  end
end
