class UsersController < ApplicationController
  before_action :authenticate_user!
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    if current_user.id == @user.id
      @reserves = Reserve.where(user_id: @user.id).where(day: Date.today..Date.today + 13)
    else
      redirect_to root_path
    end
  end

  def edit
    @user = User.find(params[:id])
  if current_user.id == @user.id
  else
    redirect_to root_path
  end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def confirmation
  end

    private
  def user_params
    params.require(:user).permit(:firstname,:lastname, :telephone, :email)
  end
end
