class Deal < ActiveRecord::Base
  attr_accessible :category, :contactemail, :contactname, :contactphonenumber, :description, :name, :price
end
