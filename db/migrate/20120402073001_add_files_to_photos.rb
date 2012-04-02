class AddFilesToPhotos < ActiveRecord::Migration
  def up
  	add_column :photos, :parent_id, :integer
  	add_column :photos, :size, :integer
  	add_column :photos, :width, :integer
  	add_column :photos, :height, :integer
  	add_column :photos, :content_type, :string
  	add_column :photos,  :filename, :string
  	add_column :photos, :thumbnail, :string
  end

  def down
  	remove_column :parent_id, :content_type, :filename, :thumbnail, :size, :width, :height
  end
end


