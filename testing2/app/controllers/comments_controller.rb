class CommentsController < ApplicationController
  def create
  respond_to do |format|
   @comment = Comment.new(params[:comment])
   if @comment.save
     format.html { redirect_to(article_path(@comment.article_id), :notice => 'Comment was successfully created.') }
     format.js
   end
 end
 end
end
