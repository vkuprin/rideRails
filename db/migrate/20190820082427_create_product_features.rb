class CreateProductFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :product_features do |t|
      t.string :icon
      t.string :feature
      t.string :description
      t.boolean :highlighted_style
      t.boolean :list_style
      t.timestamps
      t.references :product, foreign_key: true, index: true
    end
  end
end
