class AuctionsController < ApplicationController

	def index 
		@auctions = Auction.all
	end

	def current
		@auction = Auction.where(current: true).first
		@listings = Listing.where(auction_id: @auction.id)
		data = { auction: @auction, listings: @listings }
		render json: data
	end


end
