class RentalsController < ApplicationController
  # before_action :set_rental, only: %i[edit update]

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.book = @book

    # calculate_days

    if @rental.save
      redirect_to @rental.user, notice: "You have successfully rented this book!"
    else
      render 'books/show'
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  # def set_rental
  #   @rental = Rental.find(params[:book_id])
  # end

  # def calculate_days
  #   @total_days = @rental.end_date - @rental.start_date
  # end
end
