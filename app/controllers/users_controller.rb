class UsersController < ApplicationController
  def new
  end

  def show
    @user = current_user

    if @user.nil?
      redirect_to new_user_registration_path
    end
  end

  def create
  end

  def index
  end

end
