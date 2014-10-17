class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.int :duration

      t.timestamps
    end
  end
end
