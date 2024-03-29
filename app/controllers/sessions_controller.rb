class SessionsController < ApplicationController
  
  def new
    if logged_in?
      flash[:info] = 'すでにログインしています。'
      redirect_to current_user
    end
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      flash[:success] = 'ログインしました。'
      redirect_to user
    else
      flash.now[:danger] = '認証に失敗しました。'
      render :new
    end
  end
  
  def destroy
    log_out if logged_in?
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end
  
  # ゲスト管理者ログイン
  def create_a
    user = User.find(2)
    log_in user
    forget user
    flash[:success] = 'ゲスト管理者としてログインしました。'
    redirect_to user
  end
  
  # ゲストユーザーログイン
  def create_b
    user = User.find(3)
    log_in user
    forget user
    flash[:success] = 'ゲストユーザーとしてログインしました。'
    redirect_to user
  end
  
  private
end
