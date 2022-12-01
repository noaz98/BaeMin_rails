class CreateDibs < ActiveRecord::Migration[5.2]
  def change
    create_table :dibs do |t|
	  t.references :store, foreign_key: true
	  t.references :customer, foreign_key: true
	  t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
