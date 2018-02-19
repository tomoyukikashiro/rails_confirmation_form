class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def confirm
    @book = Book.new(book_params)
    if @book.invalid?
      render :new
    end
  end

  def create
    @book = Book.new(book_params)
    unless @book.save
      redirect_to ({action: 'new'}), {alert: 'error'}
      # redirect_to book_new_path, alert: 'error'
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :published)
  end

end
