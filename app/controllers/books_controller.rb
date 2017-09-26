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

  def update
    @book = Book.find(params[:id])
    @book.update!(book_params)
    render :show
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render json: {deleted: true}
  end

  private

  def book_params
    params.require(:book).permit(:title, author_ids: [], authors_attributes: [:id, :name])
  end
end
