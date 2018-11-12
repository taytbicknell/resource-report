class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.integer :primary_zip

      t.timestamps
    end
  end
end
