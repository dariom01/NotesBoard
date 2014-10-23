class AddSectionToNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :section, index: true
  end
end
