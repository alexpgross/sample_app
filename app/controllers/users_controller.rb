class UsersController < ApplicationController
	def create
		@user = User.new(user_params)
	end

  def new
  	@title = "Sign up"
  end

  def show
  	@user = User.find(params[:id])
    puts '*' * 88
  	render :show
  end

  def index
  end

private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
