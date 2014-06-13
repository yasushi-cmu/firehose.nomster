class Place < ActiveRecord::Base
	paginates_per 5
	belongs_to :user
	has_many :comments
	has_many :photos

	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true
	validates :address, :presence => true, :length => { :minimum => 3}
	validates :description, :presence => true
end
