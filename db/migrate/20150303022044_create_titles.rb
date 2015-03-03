class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :text
      t.references :format, index: true

      t.timestamps
    end
  end
end
