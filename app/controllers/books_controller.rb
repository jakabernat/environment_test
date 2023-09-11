class BooksController < ApplicationController

  def index
    @books = Book.order(:id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @count = Book.count
    @book = Book.new()
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: @book.title + " has been created"
    else
      # The 'new' action is NOT being called here
      # Assign any instance variables needed
      # @count = book.count
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book), notice: @book.title + " has been updated"
    else
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: @book.title + " has been deleted"
  end

  private

  def book_params
    params.require(:book).permit(
      :title,
      :author,
      :price,
      :publishedDate
    )
  end

end
