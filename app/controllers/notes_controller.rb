class NotesController < ApplicationController
  def create
    @section = Section.find(params[:section_id])
    @note = @section.notes.create(note_params)
    redirect_to board_path(@section.board)
  end

private
  def note_params
    params.require(:note).permit(:body)
  end
end
