class BraintreeController < ApplicationController

	def token
	  token = Braintree::ClientToken.generate

	  data = { token: token }

	  render json: data
	end

end
