class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :show ]

  def index
    @products = Product.all

    if params[:category].present?
      @products = @products.where('?=ANY(categories)', params[:category])
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :quantity)
  end
end
