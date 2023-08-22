class BooksController < ApplicationController

  def new
    @books = Book.new
  end

  def create
    @book 
  end
end
