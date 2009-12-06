class PostsController < ApplicationController

  def index
    @post = Post.new
    user_id = params[:id] ? params[:id] : session[:user_id]
    @posts = Post.find_all_by_user_id(user_id)
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    respond_to do |format|
      format.html { render :action => "index" }
    end
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = session[:user_id] 

    respond_to do |format|
      if @post.save
        flash[:notice] = 'Post was successfully created.'
        format.html { redirect_to :action => "index" }
      else
        format.html { render :action => "index" }
      end
    end
  end

end
