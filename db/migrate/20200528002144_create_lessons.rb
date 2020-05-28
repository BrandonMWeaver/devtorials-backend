class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :tutorial_id
      t.string :content

      t.timestamps
    end
  end
end
