class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :menu
      t.integer :menu_price
      t.string :menu_category

	  t.references :store, foreign_key: true
      t.timestamps
    end
  end
end
