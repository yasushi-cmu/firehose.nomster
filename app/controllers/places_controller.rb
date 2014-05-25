class PlacesController < ApplicationController
	def index
		@places = Place.order(:name).page params[:page]
#		@places = Place.all
	end

	def new
		@place = Place.new
	end
end
