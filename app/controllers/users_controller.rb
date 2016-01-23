class UsersController < ApplicationController
  
  def show
    if current_user.present?
      @user = params[:id] ? User.find(params[:id]) : current_user
      @item = Item.new
      @items = @user.items
    else
      redirect_to root_path
    end
  end


  def index
    @users = User.all
  end

end
