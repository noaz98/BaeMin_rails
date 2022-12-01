class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :address_name

	  t.references :customer, foreign_key: true
	  t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
