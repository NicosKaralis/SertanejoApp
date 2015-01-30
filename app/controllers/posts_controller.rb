class PostsController < ApplicationController
  
  def index
    data, more = Post.page params[:page]
    respond_with data: data, has_more: more
  end
  
  def create
    post = Post.create(user_id: params[:user_id], content: params[:content])
    post.aprove
    respond_with post
  end
  
end
