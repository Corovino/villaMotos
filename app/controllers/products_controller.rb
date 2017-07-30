class ProductsController < ApplicationController
  layout 'dashboard'
  def index
    @products = Product.all
    @product  = Product.all
    @category = Category.all
    @brand    = Brand.all

  
  end

  def new
    @product = Product.new
    @category = Category.new
    @brand    = Brand.new
  end

  def create
    @product = Product.new(products_params)
    puts "--#{@product}--"

    if @product.save
      flash[:notice] = "Producto creado"
      redirect_to products_path
    else
      flash[:notice] = "No se pudo crear la Producto"
      render 'new'
    end    

  end

  def show
   # @products = Products.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Se elimino el producto"
      redirect_to product_path
    else
      flash[:alert] = "No es posible eliminar el producto"
      render 'index'
    end    
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(products_params)
      flash[:notice] = "Se actualizo el producto"
      redirect_to product_path
    else
      flash[:alert] = "No se puede actualizar el producto"
      render 'index'
    end    
  end

  private 
    
    def products_params 
      params.require(:product).permit(:codigo, :nombre, :id_categoria, :id_marca, :precio_compra, :precio_venta, :cantidad, :estado )
    end   
end
