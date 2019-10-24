class CreateApplicationFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :application_features do |t|
      t.string :icon
      t.string :feature
      t.string :description
      t.boolean :highlighted_style
      t.boolean :list_style
      t.timestamps
      t.references :applications, foreign_key: true, index: true
    end
  end
end
