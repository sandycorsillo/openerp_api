class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    # @products = params[:proudct]
    # 
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @products }
    # end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = ProductProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = ProductProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = ProductProduct.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @products = params[:name]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
