class SizesController < ApplicationController
  def index
  	@sizes = Size.order(name: :asc).pluck(:name).uniq
  end

  def show
  	# manufacture#show @sizes = Size.where(name: params[:id]).order(price: :asc)
  	@reserve = Reserve.new
    @reserves = Reserve.all
    @size = Size.find(params[:id])
  end

  def select
  	# size#index @sizes = Size.order(name: :asc).pluck(:name).uniq
  end

  def top
  end
  
end
