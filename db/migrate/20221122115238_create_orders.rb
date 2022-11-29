class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.string :requests
      t.string :payment
	  
	  t.references :store, foreign_key: true
	  t.references :menu, foreign_key: true
      t.timestamps
    end
  end
end
