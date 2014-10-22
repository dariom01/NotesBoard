class DropSprint < ActiveRecord::Migration
  def change
    drop_table :sprints

  end
end
