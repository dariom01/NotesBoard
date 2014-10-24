class NotesController < ApplicationController

  def new
    @section = Section.find(params[:section_id])
    @note = @section.notes.new
  end

  def create
    @section = Section.find(params[:section_id])
    @note = @section.notes.new(note_params)
    if @note.save
      redirect_to board_path(@section.board)
    else
      render 'new'
    end

  end

private
  def note_params
    params.require(:note).permit(:body)
  end
end
