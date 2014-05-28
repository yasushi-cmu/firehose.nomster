class Place < ActiveRecord::Base
	paginates_per 4
	belongs_to :user
	validates :name, :presence => true
end
