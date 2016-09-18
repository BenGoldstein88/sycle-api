class BidsController < ApplicationController

	def index
		@bids = Bid.all
		p '*'*200
		data = { bids: @bids }
		render json: data
	end

end
