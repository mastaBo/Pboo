class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end
	def create
		@photo = Photo.create!(params[:photo])
		redirect_to photos_path
	end

	def edit
		@photo = Photo.find params[:id]
	end	

	def update
		@photo = Photo.find params[:id]
		@photo.update_attributes!(params[:photo])
		redirect_to photo_path(@photo)
	end

	def destroy
		@photo = Photo.find params[:id]
		@photo.destroy
		redirect_to photos_path
	end

	def new
   		@photo = Photo.new

    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.xml  { render :xml => @photo }
    #end
    end
end