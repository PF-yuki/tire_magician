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
    @reserve = Reserve.new
    @reserves = Reserve.all
    @size = Size.find(params[:id])
  end

  def confirm_c
    @reserve = Reserve.new(reserve_params)
    @size = Size.find(params[:id])
    redirect_to reserves_confirm_path
  end
  def confirm
    @reserve = Reserve.find(params[:id])
    puts @reserve
   # @size = Size.find(params[:id])
    
  end

    def create
    @reserve = Reserve.new(reserve_params)
    @reserve.save
    render "/reserves/success"
  end

  def destroy
  end

  private

  def reserve_params
    params.require(:reserve).permit(:day, :time, :car_maker, :car_model,:size_id).merge(user_id: current_user.id)
 end


end
