class BoardsController < ApplicationController
  def new

  end
  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(params[:id])
  end
  def create
    @board = Board.new(board_params)

    @board.save
    redirect_to @board
  end

private
  def board_params
    params.require(:board).permit(:name, :description)
  end

end
