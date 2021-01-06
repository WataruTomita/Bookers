class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  # ↓いらない部分
  # def new
    # @book = Book.new
  # end
  # ↑ここまで

  def create
    # binding.pry
    book = Book.new(book_params)
    # ここから
    # book = Book.new(book_params)
    # book.save
    # redirect_to books_path(book)
    # ここまで　動作確認済み。触らない。
    if book.save
      redirect_to book_path(book)
    else
      render action: :new
    end
    # if @book.save
      # redirect_to book_path(book)
    # else
      # render "index"
      # render books_path
      # redirect_to books_path
    # end

  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
