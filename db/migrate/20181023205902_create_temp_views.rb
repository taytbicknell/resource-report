class CreateTempViews < ActiveRecord::Migration[5.2]
  def change
    create_table :temp_views do |t|
      t.integer :zip

      t.timestamps
    end
  end
end
