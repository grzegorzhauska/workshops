class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]

  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
  end

  def show
  end

  def new
  end

  def edit
    unless product.user.present? && product.user == current_user
      redirect_to category_product_url(category, product), flash: { error: 'You are not allowed to edit this product.' }
    end
  end

  def create
    self.product = Product.new(product_params.merge({ user_id: current_user.id }))
    if product.save
      category.products << product
      redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    unless product.user.present? && (product.user == current_user)
      redirect_to category_product_url(category, product), flash: { error: 'You are not allowed to edit this product.' }
    else
      if self.product.update(product_params)
        redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
      else
        redirect_to category_product_url(category, product), error: 'You are not allowed to edit this product.'
      end
    end
  end

  # DELETE /products/1
  def destroy
    product.destroy
    redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end
end
