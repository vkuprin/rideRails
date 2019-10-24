class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :slogan
      t.text :overview
      t.text :features
      t.string :top_img
      t.timestamps
    end
  end
end
