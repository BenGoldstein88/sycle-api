class UsersController < ApplicationController
	skip_before_action :authenticate_request

	def create
		p params
		@user = User.new(user_params)
		@user.password = params[:password]
		@user.save!

		@result = Braintree::Customer.create(
			# can pass in params here like first/last name
			)
		@user.braintree_customer_id = @result.customer.id
		@user.save!

		data = { user: @user }
		render json: data
	end

	# def login
	# 	@user = User.find_by_email(params[:email])
	# 	if @user.password == params[:password]
	# 		# give_token
	# 		session[:current_user] = @user

	# 	else
	# 		redirect_to home_url
	# 	end
	# end
	private
  
	def user_params
		params.require(:user).permit(:email, :password, :username)
	end

end
