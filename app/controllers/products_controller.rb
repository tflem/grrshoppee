class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

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
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Your product has been updated."
      redirect_to @product
    else
      flash[:alert] = "Your product has not been updated."
      render :edit
    end
  end

  def destroy
    @product.destroy

    flash[:notice] = "Your product has been deleted."
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The product you're trying to view does not exist."
    redirect_to products_path
  end

  def product_params
    params.require(:product).permit(:name, :quantity)
  end
end
