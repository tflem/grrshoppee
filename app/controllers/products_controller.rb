class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Your product has been added."
      redirect_to @product
    else
      flash.now[:alert] = "Your product has not been added."
      render "new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      flash[:notice] = "Your product has been updated."
      redirect_to @product
    else
      flash[:alert] = "Your product has not been updated."
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    flash[:notice] = "Your product has been deleted."
    redirect_to products_path
  end    

  private

  def product_params
    params.require(:product).permit(:name, :quantity)
  end
end
