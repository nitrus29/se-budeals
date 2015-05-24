class Deal < ActiveRecord::Base
  attr_accessible :category, :contactemail, :contactname, :contactnumber, :description, :name, :price
end
