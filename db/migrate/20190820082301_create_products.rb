class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :slogan
      t.text :overview
      t.text :purpose
      t.string :top_img
      t.string :bottom_img
      t.timestamps
    end
  end
end
