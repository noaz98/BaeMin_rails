class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_address
      t.string :food_category
      t.integer :min_price
      t.integer :tip
      t.text :content
      t.text :guide
      t.string :phone
      t.string :delivery_address
      t.string :operation_address
      t.string :closedDays
      t.integer :dibs_count
      t.integer :review_count
      t.integer :rating_count

      t.timestamps
    end
  end
end
