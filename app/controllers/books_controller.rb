class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.create(book_params)
    render :show, status: :created
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end
end
