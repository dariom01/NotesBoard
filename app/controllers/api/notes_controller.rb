class Api::NotesController < ApplicationController
  respond_to :json

  def index
    section = Section.find(params[:section_id])
    serialized_notes =
      ActiveModel::ArraySerializer
               .new(section.notes, each_serializer: NoteSerializer)

    render json: serialized_notes
  end

  def create
  section = Section.find(params[:section_id])
 
  if section.notes.create(note_params)
        render json: section
    else
      render json: section.errors.messages, status: :bad_request
    end
  end


  private
  def note_params
    params.require(:note).permit(:body)
  end

end