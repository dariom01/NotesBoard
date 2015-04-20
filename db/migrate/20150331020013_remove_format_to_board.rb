class RemoveFormatToBoard < ActiveRecord::Migration
  def change
  remove_reference :boards, :formats  
  end
end
