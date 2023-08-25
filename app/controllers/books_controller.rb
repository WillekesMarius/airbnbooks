class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy new]
  skip_before_action :authenticate_user!, only: %i[index show]

  def initialize_book
    @user = Book.new
  end

  def index
    @books = Book.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR author ILIKE :query OR overview ILIKE :query OR genre ILIKE :query"
      @books = @books.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @rental = Rental.new

    @existing_rental_dates = @book.rentals.map do |rental|
      {
        from: rental.start_date,
        to: rental.end_date
      }
    end
  end

  def new
    @book = Book.new
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
    if @book.user == current_user
      @book.destroy
      redirect_to dashboards_path(current_user), status: :see_other
    else
      redirect_to dashboards_path(current_user), notice: "You are not the owner of this book!"
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :year, :overview, :genre)
  end
end
