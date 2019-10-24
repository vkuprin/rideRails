class AddForeignKeysForArticles < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :blog_article_tags, :blog_tags
    add_foreign_key :blog_article_tags, :blog_articles
  end
end
