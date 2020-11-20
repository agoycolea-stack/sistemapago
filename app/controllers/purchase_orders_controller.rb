class PurchaseOrdersController < ApplicationController
  before_action :set_product, only: :add_product
  before_action :generate_code

  # GET /products
  # GET /products.json
  def index
    @purchase_orders = PurchaseOrders.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @purchase_order = PurchaseOrder.new
    @product = Products.all
  end

  def cart
    @purchase_order_products = @order.purchase_order_products
  end

  def add_product

    @purchase_order = PurchaseOrder.open.last
    @purchase_order ||= PurchaseOrder.create(status: :pending, total_amount: @product.price)
		@purchase_order.products << @product

  end

  #def generate_code
	#	self.code = SecureRandom.alphanumeric(18)
	#end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:product_id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_order_params
      params.require(:purchase_order).permit(:product_id)
    end
end
