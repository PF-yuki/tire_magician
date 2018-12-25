class SizesController < ApplicationController
  def index
  	@sizes = Size.order(name: :asc).pluck(:name).uniq
  end

  def show
    @size = Size.find(params[:id])
  end

  def select
  end

  def top
  end

end
