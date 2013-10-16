class PluralizeTableNames < ActiveRecord::Migration
  def change
    rename_table :comment, :comments
    rename_table :code, :codes
  end
end
