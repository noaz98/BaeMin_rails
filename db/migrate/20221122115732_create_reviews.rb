class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating

	  t.references :store, foreign_key: true
	  t.references :customer, foreign_key: true
	  t.references :user, foreign_key: true
	  t.references :menu, foreign_key: true
      t.timestamps
    end
  end
end
