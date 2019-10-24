class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.text :about
      t.string :name
      t.string :img
      t.timestamps
    end
  end
end
