class ManufacturesController < ApplicationController
  def show
  	@sizes = Size.where(name: params[:id]).order(price: :asc)
  end
end
