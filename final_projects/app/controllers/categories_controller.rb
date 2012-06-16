class CategoriesController < ApplicationController
  before_filter :require_login, :only => [:new, :create, :edit, :update, :delete]
  before_filter :require_admin_login, :only => [:new, :create, :edit, :delete]
  before_filter :find_category, :only => [:edit, :update, :delete, :show] 
  
  def index
    @category = Category.all
  end
  def show
    @categoryy = Category.find_by_id(@category.parent_id)
  end

  private
  def find_category
    @category = Category.find_by_id(params[:id])
    if @category == nil
      flash[:error] = "the product not found"
      redirect_to admin_category_path 
    else 
      return @category
    end
  end
  
end
