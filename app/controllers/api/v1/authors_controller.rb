module Api
    module V1        
        class AuthorsController < ApplicationController            
            def index
                @authors = Author.all
                render json: @authors
            end
            def show
                @author = Author.find(params[:id])
                render json: @authors
            end
            def new 
                @author = Author.new
            end
            def create
                @author = Author.new(article_params)
                @author.save
                flash.notice = "Author '#{@author.title}' An author is created!"
                render json: @authors
            end
            def destroy
                @author = Author.find(params[:id])
                @author.destroy
                render json: "#{@author.title} has been deleted"
            end
            def edit
                @author = Author.find(params[:id])
            end
            def update
                @author = Author.find(params[:id])
                @author.update(article_params)
                flash.notice = "Author '#{@author.title}' Updated!"
                render json: "#{@author.title} has been updated"
            end
        
        end
    end
end