module CategoriesHelper
  def category_product_count(category)
    Product.where(category: category).count
  end
end
