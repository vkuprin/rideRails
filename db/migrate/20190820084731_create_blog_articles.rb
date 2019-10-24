class CreateBlogArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_articles do |t|
      t.string :subject
      t.text :text
      t.timestamps
    end

    add_reference :blog_articles, :blog_category, foreign_key: true, index: true, type: :bigint
    add_reference :blog_articles, :account, foreign_key: true, index: true, type: :bigint
    add_reference :blog_articles, :blog_article_tag, foreign_key: true, index: true, type: :bigint
  end
end
