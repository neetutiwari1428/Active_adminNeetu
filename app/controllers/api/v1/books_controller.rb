module Api
    module V1        
        class BooksController < ApplicationController            
            def index
                @books = Book.all
                render json: @books
            end
            def show
                @book = Book.find(params[:id])
                render json: @books
            end
            def new 
                @book = Book.new
            end
            def create
                @book = Book.new(book_params)
                @book.save
                flash.notice = "Book '#{@book.title}' An book is created!"
                render json: @books
            end
            def destroy
                @book = Book.find(params[:id])
                @book.destroy
                render json: "#{@book.title} has been deleted"
            end
            def edit
                @book = Book.find(params[:id])
            end
            def update
                @book = Book.find(params[:id])
                @book.update(book_params)
                flash.notice = "Book '#{@book.title}' Updated!"
                render json: "#{@book.title} has been updated"
            end
        
        end
    end
end