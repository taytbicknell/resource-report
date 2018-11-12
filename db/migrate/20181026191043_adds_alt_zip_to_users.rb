class AddsAltZipToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :alt_zip, :integer
  end
end
