class BlogArticle < ApplicationRecord
  has_one :account
  has_one :blog_category
  has_many :blog_article_tags
end
