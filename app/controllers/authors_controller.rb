class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.create(author_params)
    render :show, status: :created
  end

  private

  def author_params
    params.require(:author).permit(:name)
  end
end
