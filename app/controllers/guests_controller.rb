class GuestsController < ApplicationController
  def new
    user = User.find_or_create_by!(email: 'test@sample.jp') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
