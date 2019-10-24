class CreateTrainingVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :training_videos do |t|
      t.string :subject
      t.string :link
      t.references :training_video_category, foreign_key: true, index: true
      t.timestamps
    end
  end
end
