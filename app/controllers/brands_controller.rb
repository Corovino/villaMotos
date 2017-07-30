class BrandsController < ApplicationController
  layout 'dashboard'
  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def show
    @brand = Brand.all  
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brands_params)
       flash[:notice] = "Seactualizo la marca correctamente"
       redirect_to brands_path
    else
        flash[:alert] = "No es posible actualizar la marca en este momento"
        reder 'edit'
    end     
  end

  def delete
    @brand = Brand.find(params[:id]) 
      
    if @brand.destroy
       flash[:notice] = "Se Elimino la marca correctamente"
       redirect_to brands_path
    else
        flash[:alert] = "No es posible Eliminar la marca en este momento"
        reder 'edit'
    end    
  end

  def create
    @brand = Brand.new(brands_params)
    if @brand.save
      flash[:notice] = "Se ingreso una marca nueva"
      redirect_to brands_path
    else
      flash[:alert] = "Se ingreso una marca nueva"
      reder 'edit'
    end    
  end

  private 

    def brands_params
      params.require(:brand).permit(:nombre,:codigo)
    end  
end
