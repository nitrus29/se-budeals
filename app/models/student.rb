class Student < ActiveRecord::Base
  attr_accessible :emailid, :firstname, :lastname, :password, :phoneno
end
