class BlogController < ApplicationController
  def index
    @per_page = 2
    @page = params[:page].to_i || 1
    @blog_articles = BlogArticle.order(created_at: :desc).paginate(page: @page, per_page: @per_page).as_json
  end
end
