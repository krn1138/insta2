class UsersController < ApplicationController
  # before_action :set_user, only: [:show]
  # before_action :not_sign_in
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "ようこそ！"
    else
      render :new, notice: "登録できませんでした"
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
