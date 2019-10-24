class CreateBlogArticleTags < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_article_tags do |t|
      t.bigint :blog_tag_id
      t.bigint :blog_article_id
      t.timestamps
    end
  end
end
