class CreateTutorials < ActiveRecord::Migration[6.0]
  def change
    create_table :tutorials do |t|
      t.integer :administrator_id
      t.string :title
      t.string :language
      t.string :description
      
      t.timestamps
    end
  end
end
