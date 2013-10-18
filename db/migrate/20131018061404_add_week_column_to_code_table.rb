class AddWeekColumnToCodeTable < ActiveRecord::Migration
  def change
    add_column :codes, :week_id, :integer
  end
end
