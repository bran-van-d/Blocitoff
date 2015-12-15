class UsersController < ApplicationController
  def new
  end

  def show
    if !current_user.nil?
      @user = User.find(params[:id])
      @item = Item.new
      @items = @user.items
    else
      redirect_to new_user_registration_path
    end
  end

  def create
  end

  def index
    @users = User.all
  end

end
