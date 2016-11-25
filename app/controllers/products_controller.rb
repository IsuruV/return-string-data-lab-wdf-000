class ProductsController < ApplicationController
    def create
      product = Product.create(products_params)
      redirect_to products_path
    end

    def inventory
      product = Product.find_by_id(product_params)
      if product.inventory > 0
        render plain: true
      else
        render plain: false
      end
    end

    def description
      product = Product.find_by_id(product_params)
      render plain: product.description
    end
    def index
      @products = Product.all
    end

  private
  def products_params
    params.require(:product).permit(:name, :price, :inventory, :description)
  end
  def product_params
    params.require(:id)
  end
end
