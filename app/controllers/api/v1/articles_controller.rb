module Api
  module V1        
      class ArticlesController < ApplicationController            
          def index
              @articles = Article.all
              render json: @articles
          end
          def show
              @article = Article.find(params[:id])
              render json: @articles
          end
          def new 
              @article = Article.new
          end
          def create
              @article = Article.new(article_params)
              @article.save
              flash.notice = "Article '#{@article.title}' An article is created!"
              render json: @articles
          end
          def destroy
              @article = Article.find(params[:id])
              @article.destroy
              render json: "#{@article.title} has been deleted"
          end
          def edit
              @article = Article.find(params[:id])
          end
          def update
              @article = Article.find(params[:id])
              @article.update(article_params)
              flash.notice = "Article '#{@article.title}' Updated!"
              render json: "#{@article.title} has been updated"
          end
      
      end
  end
end