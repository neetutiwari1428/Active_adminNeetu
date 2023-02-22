module Api
    module V1        
        class NotesController < ApplicationController            
            def index
                @notes = Note.all
                render json: @notes
            end
            def show
                @note = Note.find(params[:id])
                render json: @notes
            end
            def new 
                @note = Note.new
            end
            def create
                @note = Note.new(note_params)
                @note.save
                flash.notice = "Note '#{@note.title}' An note is created!"
                render json: @notes
            end
            def destroy
                @note = Note.find(params[:id])
                @note.destroy
                render json: "#{@note.title} has been deleted"
            end
            def edit
                @note = Note.find(params[:id])
            end
            def update
                @note = Note.find(params[:id])
                @note.update(note_params)
                flash.notice = "Note '#{@note.title}' Updated!"
                render json: "#{@note.title} has been updated"
            end
        
        end
    end
end