class UsersController < ApplicationController

  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "successfully update!"
      redirect_to user_path(@user.id)
    end
  end

  private

  def user_params
    params.require(:user).permit(:image, :username, :name, :profile)
  end
end
