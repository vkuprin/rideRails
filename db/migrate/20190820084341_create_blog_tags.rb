class CreateBlogTags < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_tags do |t|
      t.string :name
      t.timestamps
    end
  end
end
