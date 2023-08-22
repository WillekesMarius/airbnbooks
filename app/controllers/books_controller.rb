class BooksController < ApplicationController

  skip_before_action :authenticate_user!
  before_action :set_book only :show

  def new
    @books = Book.new
  end

  def show
    @books = Books.all
  end
  
  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book, notice: "Your book has been succesfully updated!"
    else
      render :edit
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.find(params[:user_id])
    @book = @user.books.new(book_params)
      if @book.save
        redirect_to @user, notice: "Your book was successfully created!"
      else
        render @user
      end
    end
  
private

    def set_book
      @book= Book.find(params[:id])
    end

  def book_params
    params.require(:book).permit(:title, :author, :year, :overview, :genre)
  end
end
