class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :login_id
      t.string :password
      t.string :phone
      t.string :email
      t.string :nickname
      t.string :current_address

      t.timestamps
    end
  end
end
