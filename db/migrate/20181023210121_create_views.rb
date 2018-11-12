class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.integer :user_id
      t.integer :alt_zip

      t.timestamps
    end
  end
end
