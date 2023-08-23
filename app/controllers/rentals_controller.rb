class RentalsController < ApplicationController
  def create
    # raise
    @book = Book.find(params[:id])
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.book = @book
    
    calculate_days

      if @rental.save
        redirect_to @rental.user, notice: "You have successfully rented this book!"
      else
        render 'books/show'
      end
  end

  #def return ## need to be able to return the rented book
  
  private

  def calculate_days
    @total_days = @rental.end_date - @rental.start_date
    @total_days = @total_days.to_i
  end

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end