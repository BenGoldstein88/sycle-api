class Listing < ActiveRecord::Base
	belongs_to :user
	belongs_to :auction
	has_many :images
	has_many :bids
end
