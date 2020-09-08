class FoodsController < ApplicationController

  def index
    @foods = Food.order :name
  end

  def new
    @food = Food.new
  end

  def create
    Food.create(food_params)
    redirect_to "/foods"
  end

  def search
    @foods = Food.search(params[:keyword])
  end
 
  # def insearch
  #   return nil if params[:keyword] == ""
  #   @foods = Food.where(['name LIKE ?', "%#{params[:keyword]}%"] ).limit(10)
  #   respond_to do |format|
  #     format.html
  #     format.json
  #   end   
  # end



  private
  def food_params
    params.permit(:name, :carb)
  end

end
