require 'rails_helper'

RSpec.describe Deal do

	it "is invalid without a name" do
	FactoryGirl.build(:Deal, name: nil).should_not be_valid
	end

	it "is invalid without a description" do
	FactoryGirl.build(:Deal, description: nil).should_not be_valid
	end
end
