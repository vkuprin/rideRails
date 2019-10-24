class AddDownloadCountRelation < ActiveRecord::Migration[6.0]
  def change
    add_reference :literature_download_counts, :literatures, foreign_key: {on_delete: :cascade}, index: true
  end
end
