# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

deals = [{:name => 'Ruby on Rails', :category => 'Books', :price => '$5', :description=>'Tutorial on how to use Ruby on Rails '},
          {:name => 'iphone 5s', :category => 'Electronics', :price => '$500', :description=>'in good working condition'},
          {:name => '1BHK', :category => 'Housing', :price => '$475',:description=>'close to BU stops'},
          {:name => 'Guitar', :category => 'Other', :price => '$40',:description=>'good condition'},
         ]

deals.each do |deal|
  Deal.create!(deal)
end
