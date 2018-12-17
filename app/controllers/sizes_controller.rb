class SizesController < ApplicationController
  def index
  end

  def show
  	@size = Size.find(params[:id])
  	@sizes = Size.where(name: @size.name).order(price: :asc)
  end

  def select
  	@sizes = Size.all.order(name: :asc)
  end
end
