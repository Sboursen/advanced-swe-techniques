class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def create
    book = Book.new(create_params)
    book.discount = book.condition == 'new' ? 0 : 50

    if book.save
      redirect_to books_path
    else
      render 'new'
    end
  end

  private

  def create_params
    params.require(:book).permit(:title, :condition, :price)
  end
end
