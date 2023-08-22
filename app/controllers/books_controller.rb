class BooksController < ApplicationController

  def new
    @books = Book.new
  end
end
