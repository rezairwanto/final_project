class ProductsController < ApplicationController
  before_filter :require_login, :only => [:new, :create, :edit, :update, :destroy]
  before_filter :find_product, :only => [:edit, :update, :destroy, :show]

  def new
    @product = Product.new
    @parent_category = Category.where(["parent_id IS not NULL"]).map{|x| [x.name, x.id]}
  end

  def index
    @product = Product.all
  end

  def edit
    @parent_category = Category.where(["parent_id IS not NULL"]).map{|x| [x.name, x.id]}
  end

  def destroy
    if @product.user_id == current_user.id || current_user.is_admin?
    Product.find_by_id(params[:id]).destroy
    redirect_to :action => :index, :notice => "category was deleted"
    else
    redirect_to products_path, :notice => "you can't deleted this product"
    end
  end

  def update
    if @product.user_id == current_user.id || current_user.is_admin?
      if @product.update_attributes(params[:product])
        redirect_to products_path, :notice =>"product was update"
      else
        render :action => :edit
      end
    else
      redirect_to products_path, :notice => "you can't update this product"
    end
  end
 
  def create
    @product = Product.new(params[:product])
    @product.user_id = current_user.id
    if @product.save
      redirect_to products_path, :notice => "product was created"
    else
      render :action => :new
    end
  end

  def show
    @category_name = Category.find_by_id(@product.categories_id)
    @user_name = User.find_by_id(@product.user_id)
  end

  private
  def find_product
    @product = Product.find_by_id(params[:id])
    if @product == nil
      flash[:error] = "the product not found"
      redirect_to products_path 
    else 
      true
    end
  end	
end
