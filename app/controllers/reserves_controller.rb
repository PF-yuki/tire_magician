class ReservesController < ApplicationController
  def new
    @size = Size.find(params[:size_id])
    @reserve = Reserve.new
    @reserves = Reserve.all

  end

  def index
  end

  def success
  end

  def show
   @reserve = Reserve.find(params[:id])
   @size = @reserve.size
  end

  def confirm
  end

  def create
    @size = Size.find(params[:size_id])
    @reserve = Reserve.new(reserve_params)
    @reserve.size_id = @size.id
    @reserve.user_id = current_user.id
    if @reserve.save
      redirect_to reserf_path(@reserve.id)
    else
      @reserves = Reserve.all
      render :new
    end
  end

  def destroy
  end

  private

  def reserve_params
    params.require(:reserve).permit(:day, :time, :car_maker, :car_model, :size_id).merge(user_id: current_user.id)
 end


end
