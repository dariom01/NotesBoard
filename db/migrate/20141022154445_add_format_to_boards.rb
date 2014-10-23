class AddFormatToBoards < ActiveRecord::Migration
  def change
    add_reference :boards, :format, index: true
  end
end
