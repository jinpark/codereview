class AddWeeksTable < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :code_id
      t.string :title
      t.string :description
      
      t.timestamps
    end
  end
end
