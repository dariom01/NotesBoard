class Api::SectionsController < ApplicationController
  respond_to :json

  def index
    board = Board.find(params[:board_id])
    serialized_sections =
      ActiveModel::ArraySerializer
               .new(board.sections, each_serializer: SectionSerializer)

    render json: serialized_sections
  end

  def create
  board = Board.find(params[:board_id])
 
  if board.sections.create(section_params)
        render json: board
    else
      render json: board.errors.messages, status: :bad_request
    end
end


  private
  def section_params
    params.require(:section).permit(:name)
  end

end