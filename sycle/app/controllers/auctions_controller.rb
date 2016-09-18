class AuctionsController < ApplicationController

	def index 
		@auctions = Auction.all
	end

	def current
		@auction = Auction.where(current: true).limit(1)
	end


end
