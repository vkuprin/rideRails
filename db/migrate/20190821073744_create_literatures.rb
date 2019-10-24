class CreateLiteratures < ActiveRecord::Migration[6.0]
  def change
    create_table :literatures do |t|
      t.string :subject
      t.text :text
      t.string :file_type
      t.integer :file_size
      t.references :literature_categories, foreign_key: true, index: true
      t.timestamps
    end
  end
end
