class AddSourceToFiles < ActiveRecord::Migration[6.0]
  def change
    add_column :literatures, :source, :string
  end
end
