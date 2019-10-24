class RemoveBlogArtileTagIdFromArticle < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :blog_articles, column: :blog_article_tag_id
    remove_column :blog_articles, :blog_article_tag_id
  end
end
