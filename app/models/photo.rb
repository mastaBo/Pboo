class Photo < ActiveRecord::Base
	 
  	has_attachment :content_type => :image, 
        :storage => :file_system, 
        :resize_to => '320x200>',
        :path_prefix => 'public/photos',
        :thumbnails => { :thumb => '100x100>' }

    #validates :name,  :presence => true
  	#validates :uri, :presence => true
  	validates_as_attachment
end
