class CreateApplicationResources < ActiveRecord::Migration[6.0]
  def change
    create_table :application_resources do |t|
      t.references :applications, foreign_key: true, index: true
      t.references :literatures, foreign_key: true, index: true
    end
  end
end
