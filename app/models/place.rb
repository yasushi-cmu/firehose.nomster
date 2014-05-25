class Place < ActiveRecord::Base
	paginates_per 4
	belongs_to :user
end
