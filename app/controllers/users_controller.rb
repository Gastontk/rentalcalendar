class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def edit
  end

  def index
  end

  def show

    # render plain: params
    @user = User.find(params[:id]||=params[:format])
    @rentals = @user.rentals.all
    # render plain: @user

  end

  def update
  end

  def destroy
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end