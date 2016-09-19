class BidsController < ApplicationController

	def index
		@bids = Bid.all
		data = { bids: @bids }
		render json: data
	end

	def userbids
		@bids = Bid.where(user_id: @current_user.id)
		data = { bids: @bids }
		render json: data
	end

end
