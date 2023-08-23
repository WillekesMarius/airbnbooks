class RentalsController < ApplicationController

  def new
    @rental = Rental.new
  end

  def create
    @book = Book.find(params[:id])
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.book = @book
    
#     calculate_days

    if @rental.save
      redirect_to @rental.user, notice: "You have successfully rented this book!"
    else
      render 'books/show'
    end
  end

#   def return ## need to be able to return the rented book

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

  # def calculate_days
  #   @total_days = @rental.end_date - @rental.start_date
  # end
end
