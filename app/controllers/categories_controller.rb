class CategoriesController < ApplicationController
  layout 'dashboard'
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Categoria creada"
      redirect_to categories_path
    else
      flash[:notice] = "No se pudo crear la categoria"
      render 'new'
    end    

  end

  def update
     @category = Category.find(params[:id])
     if @category.update(category_params)
       flash[:notice] = "Seactualizo la categoria"
       redirect_to categories_path
     else
       flash[:alert] = "No se pudo actualizar la categoria"
       render 'edit'
     end  
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:notice] = "Se elimino la categoria"
      redirect_to categories_path
    else
      flash[:alert] = "No se pudo eliminar la categoria"
      render 'index'
    end

  end

  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
  end

  private 
    def category_params
      params.require(:category).permit(:nombre, :codigo)
    end   

end
