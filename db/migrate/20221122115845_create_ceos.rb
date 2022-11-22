class CreateCeos < ActiveRecord::Migration[5.2]
  def change
    create_table :ceos do |t|
      t.string :login_id
      t.string :password
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
