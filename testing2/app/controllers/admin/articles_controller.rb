class Admin::ArticlesController < Admin::ApplicationController
  before_filter :require_admin_login, :only => [:new, :create, :edit, :update, :delete]

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    @article.user_id = current_user.id
    if @article.save
      redirect_to :action => :index, :notice => "article was created"
    else
      render :action => :new
    end
  end
 
  def edit
    @article = Article.find(params[:id])
    
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to :action => :index, :notice =>"article was update"
    else
      render :action => :edit
    end
  end

  
  def show
   @article = Article.find(params[:id])
     @comments = Comment.all
   @comment = Comment.new
  end


  def delete
    @article = Article.find(params[:id])
    Article.find(params[:id]).destroy
    redirect_to :action => :index
  end
  
  
end
