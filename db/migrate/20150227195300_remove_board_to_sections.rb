class RemoveBoardToSections < ActiveRecord::Migration
  def change
  remove_reference :sections, :board  
  end
end
