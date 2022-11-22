class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.integer :count
      t.integer :menu_price

      t.timestamps
    end
  end
end
