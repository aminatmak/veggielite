class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :show ]

  def index
    @products = Product.all

    if params[:category].present?
      @products = @products.where('?=ANY(categories)', params[:category])
    end

    if params[:query].present?
      sql_query = " \
         products.name ILIKE :query \
         OR products.description ILIKE :query \
         OR products.supplier_country ILIKE :query \
         OR shops.name ILIKE :query \
       "
      @products = Product.joins(:shop).where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'products/list', locals: { products: @products }, formats: [:html] }
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)

    respond_to do |format|
      format.html { redirect_to products_path }
      format.text { render partial: 'products/product_infos', locals: { product: @product }, formats: [:html] }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :quantity)
  end
end
