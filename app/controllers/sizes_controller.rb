class SizesController < ApplicationController
  def index
  end

  def show
  	@sizes = Size.where(name: params[:id]).order(price: :asc)
  end

  def select
  	@sizes = Size.order(name: :asc).pluck(:name).uniq
  end
end
