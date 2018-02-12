class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :tagable_id
      t.string :tagable_type

      t.timestamps
    end
  end
end
