class FoodsController < ApplicationController
  before_action :move_to_index, except: [:index,:search]

  def index
    @foods = Food.order :name
  end

  def new
    @food = Food.new
  end

  def create
    Food.create(food_params)
    redirect_to "/foods"  # コメントと結びつくツイートの詳細画面に遷移する

  end

  def search
    @foods = Food.search(params[:keyword])
  end



  private
  def food_params
    params.permit(:name, :carb)
  end

end
