class PostsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end  
  def create
    
    Post.create(post_params)
    redirect_to "/posts"  # コメントと結びつくツイートの詳細画面に遷移する

  end


  private
  def post_params
    params.require(:post).permit(:foodname1, :foodname2, :foodname3, :foodname4, :foodname5, :carb1, :carb2, :carb3, :carb4, :carb5, :gram1, :gram2, :gram3, :gram4, :gram5, :time, :memo, :total).merge(user_id: current_user.id)

  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end


end
