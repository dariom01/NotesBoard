class SectionsController < ApplicationController

  def create
  @board = Board.find(params[:board_id])
  @section = @board.sections.create(section_params)
  redirect_to board_path(@board)
end
  def destroy
    @board = Board.find(params[:board_id])
    @section =  @board.sections.find(params[:id])
    @section.destroy
    redirect_to board_path(@board)
  end


private
  def section_params
  params.require(:section).permit(:name)
  end
end

