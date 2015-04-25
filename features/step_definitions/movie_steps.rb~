# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
    end
	#flunk "Unimplemented"
 end

# Make sure that one string (regexp) occurs before or after another one
# on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
# ensure that that e1 occurs before e2.
# page.body is the entire content of the page as a string.
	pos1 = page.body.index(e1)
	if !pos1 then raise e1 + " couldn't be found" end
		pos2 = page.body.index(e2)
	if !pos2 then raise e2 + " couldn't be found" end
	# RSpec::Expectations
	pos1.should < pos2
end

# Make it easier to express checking or unchecking several boxes at once
# "When I uncheck the following ratings: PG, G, R"
# "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
# HINT: use String#split to split up the rating_list, then
# iterate over the ratings and reuse the "When I check..." or
# "When I uncheck..." steps in lines 89-95 of web_steps.rb
	rating_list.split(",").each do |rating|
	uncheck ? uncheck("ratings_"+rating.strip) : check("ratings_"+rating.strip)
	end
 end

When /^I (un)?check all ratings$/ do |uncheck|
	Movie.all_ratings.each do |rating|
		uncheck ? uncheck("ratings_"+rating.strip) : check("ratings_"+rating.strip)
	end
end

Then /^I should (not )?see movies$/ do |no_clause, movies_table|
# page.body is the entire content of the page as a string.
rating_keys = {}
movies_table.hashes.each do |movie_row|
	if !no_clause then
		page.body.index( movie_row[:title] ).should_not == nil
	else
		page.body.index( movie_row[:title] ).should == nil
	end
		rating_keys[movie_row[:rating]] = 0
	end

#ensure the number of rows returned in the table match the scenario
	within 'tbody' do
	all('tr').count.should == movies_table.hashes.size
	end
   end
	Then /^I should see all of the movies$/ do
	within 'tbody' do
	all('tr').count.should == 10
	end
   end

	Then /^I should see ratings checked:(.*)$/ do | ratings_list|
	within("form") do
	ratings_list.split(",").each do |rating|
	find_by_id("ratings_"+rating.strip).should be_checked
	end
    end
end
