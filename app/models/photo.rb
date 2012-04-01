class Photo < ActiveRecord::Base
	 validates :name,  :presence => true
  	 validates :uri, :presence => true
end
