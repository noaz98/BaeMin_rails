class AddUserattributeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :nickname, :string
    add_column :users, :current_address, :string
  end
end
