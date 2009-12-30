class PostsController < ApplicationController

  skip_before_filter :login_required
  before_filter :login_required, :except => "show"

  def index
    @post = Post.new
    @posts = Post.find_all_by_user_id(session[:user_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render @posts.to_json }
    end
  end

  def show
    @post = Post.new
    @posts = Post.find_all_by_user_id(params[:id])

    respond_to do |format|

      format.html { render :template => "posts/index.html.erb" }
      format.json { render :json => @posts.to_json }
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
