class UsersController < ApplicationController
  # before_action :set_user
  # before_action :not_sign_in
  def new
    @user = User.new
  end

  def create_table
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "ようこそ！"
    else
      render :new, notice: "登録できませんでした"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  # def not_sign_in
  #   unless @user == current_user
  #     redirect_to new_user_path, notice: "新規登録してください"
  #   end
  # end
end
