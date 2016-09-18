class ListingsController < ApplicationController

	def index
		@listings = Listing.all
		data = { listings: @listings }
		render json: data
	end

	def create

	end

end
