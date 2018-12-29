class ReservesController < ApplicationController
  before_action :authenticate_user!
  def new
    @size = Size.find(params[:size_id])
    @reserve = Reserve.new
    @reserve_list = Date.today + 7
  end

  def index
  end

  def success
  end

  def show
   @reserve = Reserve.find(params[:id])

   if current_user.id == @reserve.user_id
     @size = @reserve.size
   else
     redirect_to root_path
  end
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
      @reserve_list = Date.today + 7
      @reserves = Reserve.where(day: Date.today + 7..Date.today + 13)
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
