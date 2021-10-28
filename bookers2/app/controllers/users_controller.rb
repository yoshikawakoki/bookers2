class UsersController < ApplicationController

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:image, :username)
  end
end
