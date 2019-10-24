class CreateApplicationTrainingVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :application_training_videos do |t|
      t.references :applications, foreign_key: true, index: true
      t.references :training_videos, foreign_key: true, index: true
      t.timestamps
    end
  end
end
