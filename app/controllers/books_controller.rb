class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to book_path(@book), notice: "Your book was successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: "Your book has been succesfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, status: :see_other
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :year, :overview, :genre)
  end
end
