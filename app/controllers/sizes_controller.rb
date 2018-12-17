class SizesController < ApplicationController
  def index
  end

  def show
  	@size = Size.find(params[:id])
  	@manufactures = Size.where(name: @size.name)
  end

  def select
  	@sizes = Size.all.order(name: :asc)
  end
end
