class CreatePressReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :press_releases do |t|
      t.string :subject
      t.text :text
      t.timestamps
    end
  end
end
