class CreateTrainingVideoCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :training_video_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
