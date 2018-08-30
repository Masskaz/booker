class BooksController < ApplicationController

  def index
  	@book = Book.new
  	@books = Book.all

  end

  def create
  	book = Book.new(post_params)
  	if book.save
  	redirect_to book_path(book.id)
    else
	redirect_to books_path
    flash[:notice] = "投稿が失敗しました"
    end
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	book.update(post_params)
  	redirect_to book_path(book.id)
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to books_path
  end

# ----------------------
  private

  def post_params
  	  params.require(:book).permit(:title, :body)
  end

end
