class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
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
