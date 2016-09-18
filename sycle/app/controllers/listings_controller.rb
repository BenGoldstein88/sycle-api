class ListingsController < ApplicationController

	def index
		@listings = Listing.all
		data = { listings: @listings }
		render json: data
	end

	def userindex
		@listings = Listing.where(user_id: @current_user.id)
		data = { listings: @listings }
		render json: data
	end

	def create

	end



end
