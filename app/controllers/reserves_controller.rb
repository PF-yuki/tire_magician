class ReservesController < ApplicationController
  def new
  end

  def index

#    @reserve = Reserve.new
#    @reserves = Reserve.all
#    @size = Size.find_by(params[:id])

  end

  def success

  end

  def show
#size#show    @reserve = Reserve.new
#             @reserves = Reserve.all
#             @size = Size.find(params[:id])
#    @reserve = Reserve.new(reserve_params)
#    @size = Size.find(params[:id])
   @reserve = Reserve.find(params[:id])

  end

  def confirm_c
#    @reserve = Reserve.new(reserve_params)
#    @size = Size.find(params[:id])
#    redirect_to reserves_confirm_path
  end

  def confirm
#    @size = Size.find(params[:id])
#    @reserve = Reserve.new(reserve_params)
  end

  def create
    @reserve = Reserve.new(reserve_params)
    @reserve.save
    binding.pry
    redirect_to reserf_path(params[:id])
  end

  def destroy
  end

  private

  def reserve_params
    params.require(:reserve).permit(:day, :time, :car_maker, :car_model).merge(user_id: current_user.id)
 end


end
