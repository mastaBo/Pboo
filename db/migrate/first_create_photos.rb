class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :name, :null => false
      t.string :uri
      t.timestamps
    end
  
  def self.down
    drop_table :photos
  end
end
