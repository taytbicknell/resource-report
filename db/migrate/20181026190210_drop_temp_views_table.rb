class DropTempViewsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :temp_views
  end
end
