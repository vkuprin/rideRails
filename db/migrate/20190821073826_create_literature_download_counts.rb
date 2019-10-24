class CreateLiteratureDownloadCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :literature_download_counts do |t|
      t.timestamps
    end
  end
end
