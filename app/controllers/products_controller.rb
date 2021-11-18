class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home, :index, :show, :add_to_cart, :remove_from_cart ]
  before_action :initialize_session
  before_action :increment_visit_count
  before_action :load_cart
  skip_before_action :verify_authenticity_token, if: :text_request?

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

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)

    respond_to do |format|
      format.text { render partial: 'products/cart_info', locals: { product_id: id, cart: session[:cart] }, formats: [:html] }
    end
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)

    respond_to do |format|
      format.text { render partial: 'products/cart_info', locals: { product_id: id, cart: session[:cart] }, formats: [:html] }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :quantity)
  end

  def initialize_session
    session[:visit_count] ||= 0 # Assign this value if nil.
    session[:cart] ||= [] # Empty cart is an empty array.
  end

  def increment_visit_count
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  def load_cart
    @cart = session[:cart].present? ? Product.find(session[:cart]) : []
  end

  def text_request?
    request.format.text?
  end
end
