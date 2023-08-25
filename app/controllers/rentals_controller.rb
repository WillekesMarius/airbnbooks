class RentalsController < ApplicationController
  def new
    @rental = Rental.new
  end

  def create
    @book = Book.find(params[:book_id])
    if @book.user == current_user
      redirect_to book_path(@book), notice: "You own this book!"
    else
      @rental = Rental.new(rental_params)
      @rental.user = current_user
      @rental.book = @book

      if @rental.save
        redirect_to dashboards_path(current_user), notice: "You have successfully rented this book!"
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    if @rental.user == current_user
      @rental.destroy
      redirect_to dashboards_path(current_user), status: :see_other
    else
      redirect_to dashboards_path(current_user), notice: "You are not renting this book!"
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
