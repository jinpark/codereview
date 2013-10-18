class RemoveCodeIdColumnFromWeeksTable < ActiveRecord::Migration
  def change
    remove_column :weeks, :code_id
  end
end
