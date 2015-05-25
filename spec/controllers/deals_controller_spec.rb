require 'rails_helper'

RSpec.describe DealsController, :type => :controller do
	it "is invalid without a name" do
	FactoryGirl.build(:deal, name: nil).should_not be_valid
	end
	
	it "is invalid without a price" do
	FactoryGirl.build(:deal, price: nil).should_not be_valid
	end

	it "is invalid without a contactname" do
	FactoryGirl.build(:deal, contactname: nil).should_not be_valid
	end
	
	it "is invalid without a contactnumber" do
	FactoryGirl.build(:deal, contactnumber: nil).should_not be_valid
	end

	it "is invalid without a name" do
	FactoryGirl.build(:deal, name: nil).should_not be_valid
	end
		
end
