class UsersController < ApplicationController
  def index
    if params[:search]
      @users = User.search(params[:search]).order(email: :asc)
    else
      @users = User.all.order(email: :asc)
    end
  end

  def profile
    @user = current_user
  end
end
