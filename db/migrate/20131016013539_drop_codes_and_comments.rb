class DropCodesAndComments < ActiveRecord::Migration
  def change
    drop_table :comments
    drop_table :codes
  end
end
