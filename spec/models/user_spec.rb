require 'spec_helper'

describe User do
		it "should create a new instance given a valid attribute" do
			User.create!(name:'Alex', email:'ale@gross.com')
		end	

		it 'should require a name' do
			no_name_user = User.new(email: 'alexgross@ymail.com')
			no_name_user.should_not be_valid
		end

		it 'should require an email' do
			no_name_user = User.new(name: 'Alex Gross')
			no_name_user.should_not be_valid
		end
		it 'should reject names that are too long' do
			long_name = "a" * 51
			long_name_user = User.new(name: long_name)
			long_name_user.should_not be_valid
		end

	describe 'passwords' do
		it 'should have an passwords attribute' do
			User.new(name: "Alex", email: "alex@zmail.com")
		
		end
	end
end

