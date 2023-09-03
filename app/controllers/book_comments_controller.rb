class BookCommentsController < ApplicationController

  def create
    book = Book.find(params[:book.id])
    comment = current_user.book_comments.new(book_comment.params)
    comment.book_id = book.id
    comment.save
    redirect_to book_path(book)
  end

  def destroy
    BookComment.find(params[:id]).destroy
    redirect_to book_path(params[:book_id])
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end
