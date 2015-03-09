class BoardsController < ApplicationController
  def new
	@board = Board.new
  end
  def destroy
  @board = Board.find(params[:id])
  @board.destroy
 
  redirect_to home_index_path
end

  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(params[:id])
  end
  def edit
    @board = Board.find(params[:id])
  end
  def create
    @board = Board.new(board_params_new)
    if @board.save
	format = Format.find(@board.format_id)
	format.titles.all.each do |t|
		@board.sections.create(name: t.text)
	end

	redirect_to @board
	else
	render 'new'
	end
  end

  def update
  @board = Board.find(params[:id])
 
  if @board.update(board_params_edit)
    redirect_to @board
  else
    render 'edit'
  end
end
private
  def board_params_new
    params.require(:board).permit(:name, :description, :format_id)
	  
  end
   def board_params_edit
    params.require(:board).permit(:name, :description)
	  
  end

end
