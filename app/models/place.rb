class Place < ActiveRecord::Base
	paginates_per 4
	belongs_to :user

	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true
	validates :address, :presence => true, :length => { :minimum => 3}
	validates :description, :presence => true
end
