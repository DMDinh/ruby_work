class ProductsController < ApplicationController
  def index
    @products = Product.all
    @category = Category.all

  end

  def show
    @product = Product.find(params[:id])
    @comments = Product.find(params[:id]).comments
    # render json: @product
  end

  def new

  end

  def create
    # @product = (name = params[:name], description = params[:description], price = params[:price])
    # render json: @product
    Product.create(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category])
    redirect_to '/products'
  end

  def edit
    @product = Product.find(params[:id])
    # render json: @product
  end

  def editinfo
    Product.find(params[:id]).update(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category])
    redirect_to '/products'
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to '/products'

  end

  def allcomments
    @comments = Comment.all
    @products = Product.all
  end

  def comment
    @id = Product.find(params[:id])
    # @comment = (comment = params[:comment], @id['id'])
    # render json:  @comment
    Comment.create(comment: params[:comment], product: @id)
    redirect_to '/products'
  end



end
