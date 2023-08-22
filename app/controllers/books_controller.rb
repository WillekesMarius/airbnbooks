class BooksController < ApplicationController
  def index
    
  end

  def new
    @books = Book.new
  end

  def create
    @book
  end
end
