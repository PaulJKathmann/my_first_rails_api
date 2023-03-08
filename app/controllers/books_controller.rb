class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def create
    # some logic
    book = Book.new(title: params[:title], author: params[:author])

    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unproccessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end

end
