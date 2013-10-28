class UsersController < ApplicationController
	def create
		@user = User.new(user_params)
		if user.save
			flash[:notice] = "User is saved!"
	end

  def new
  	@title = "Sign up"
  end

  def show
  	@user = User.find(user_params)
  	render :show
  end

  def index
  end
end

private
		def user_params
			params.require(:user).permit(:name, :email)
		end
end
