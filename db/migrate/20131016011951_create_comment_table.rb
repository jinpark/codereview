class CreateCommentTable < ActiveRecord::Migration
  def change
    create_table :comment do |t|
      t.text :content
      t.integer :code_id
      t.integer :parent_comment_id
      
      t.timestamps
    end
  end
end
