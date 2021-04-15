class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    # def not_sign_in
    #   unless logged_in?
    #     redirect_to new_user_path, notice: "新規登録してください"
    #   end
    # end
end
