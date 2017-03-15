class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def new
    @product = Product.create(name: params[:name], description: params[:description])
    puts @product
    render text: 'created a new project'
  end

  def main
  end
end
