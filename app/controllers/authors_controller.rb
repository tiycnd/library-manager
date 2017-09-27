class AuthorsController < ApplicationController
  before_action :authenticate, only: [:create, :update]

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

  def update
    @author = Author.find(params[:id])
    @author.update!(author_params)
    render :show
  end

  private

  def author_params
    params.require(:author).permit(:name)
  end
end
