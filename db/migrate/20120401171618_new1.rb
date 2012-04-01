class New1 < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.string :name, :null => false
      t.string :uri
      t.timestamps
    end
  end
  
  def down
  	drop_table :photos
  end
end
