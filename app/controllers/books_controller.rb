class BooksController < ApplicationController
  # before_action :authenticate_user!, only: %i[new create]
  before_action :set_book, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @rental = Rental.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to dashboards_path(current_user), notice: "Your book was successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @book.update(book_params)
      redirect_to dashboards_path(current_user), notice: "Your book has been succesfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to dashboards_path(current_user), status: :see_other
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :year, :overview, :genre)
  end
end
