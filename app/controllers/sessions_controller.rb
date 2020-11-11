class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in user
      redirect_to user
    else
      flash.now[:danger] = '無効な電子メール/パスワードの組み合わせ'
      # エラーメッセージ
    render 'new'
    end
  end

  def destroy
  end
end
