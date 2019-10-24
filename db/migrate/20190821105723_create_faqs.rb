class CreateFaqs < ActiveRecord::Migration[6.0]
  def change
    create_table :faqs do |t|
      t.string :subject
      t.text :description
      t.timestamps
    end
  end
end
