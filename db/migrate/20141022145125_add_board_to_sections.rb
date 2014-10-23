class AddBoardToSections < ActiveRecord::Migration
  def change
    add_reference :sections, :board, index: true
  end
end
