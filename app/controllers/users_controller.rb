class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  def show
    #@book = Book.find(params[:id])
    @user = User.find(params[:id])
    @books = @user.books
    @book_new = Book.new
  end
  
  def index
    @books = Book.all
    @users = User.all
    @book_new = Book.new
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
    # 保存に成功したとき
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(current_user)
      else
    render :edit
      end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
  def correct_user
    @book = Book.find(params[:id])
    @user = @book.user
    redirect_to(books_path) unless @user == current_user
  end
end
