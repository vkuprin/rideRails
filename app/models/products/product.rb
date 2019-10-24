class Product < ApplicationRecord
  has_many :product_features

  def get_highlighted_features
    return self.product_features.where(:highlighted_style => true)
  end

  def get_listed_features
    return self.product_features.where(:list_style => true)
  end

  def get_features
    return self.product_features.where(:list_style => false).where(:highlighted_style => false)
  end
end
