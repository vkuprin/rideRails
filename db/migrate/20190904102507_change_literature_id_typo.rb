class ChangeLiteratureIdTypo < ActiveRecord::Migration[6.0]
  def change
    rename_column :literatures, :literature_categories_id, :literature_category_id
  end
end
