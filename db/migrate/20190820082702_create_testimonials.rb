class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.text :text
      t.string :name
      t.string :img
      t.string :position
      t.timestamps
    end
  end
end
