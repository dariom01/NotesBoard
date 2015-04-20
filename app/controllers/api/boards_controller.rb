class Api::BoardsController < ApplicationController
  respond_to :json

  def index
    serialized_boards =
      ActiveModel::ArraySerializer
               .new(Board.all, each_serializer: BoardSerializer)

    render json: serialized_boards
  end

  def show
    board =Board.find(params[:id])
    render json: board, :serializer => BoardSerializer
  end

  def create
	    board = Board.new(board_params)
	    if board.save
	    	render json: board
		else
			render json: board.errors.messages, status: :bad_request
		end
  end

  private
  def board_params
    params.require(:board).permit(:name, :description)
  end

end