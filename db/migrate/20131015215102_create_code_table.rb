class CreateCodeTable < ActiveRecord::Migration
  def change
     create_table :code do |t|
       t.string :title
       t.integer :user_id
       t.text :post
       
       t.timestamps
     end
  end
end
