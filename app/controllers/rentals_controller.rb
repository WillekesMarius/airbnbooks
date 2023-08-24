class RentalsController < ApplicationController
  def new
    @rental = Rental.new
  end

  def create
    @book = Book.find(params[:id])
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.book = @book

    if @rental.save
      redirect_to dashboards_path(current_user), notice: "You have successfully rented this book!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to dashboards_path(current_user), status: :see_other
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  # def calculate_days
  #   @total_days = @rental.end_date - @rental.start_date
  # end
end
