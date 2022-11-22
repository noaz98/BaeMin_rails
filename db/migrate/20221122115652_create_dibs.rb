class CreateDibs < ActiveRecord::Migration[5.2]
  def change
    create_table :dibs do |t|

      t.timestamps
    end
  end
end
