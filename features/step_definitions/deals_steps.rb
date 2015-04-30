Given /the following deals exist/ do |deals_table|
  deals_table.hashes.each do |deal|
      Deals.create!(deal)
    end
	#flunk "Unimplemented"
 end


Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
	pos1 = page.body.index(e1)
	if !pos1 then raise e1 + " couldn't be found" end
		pos2 = page.body.index(e2)
	if !pos2 then raise e2 + " couldn't be found" end

	pos1.should < pos2
end


When /I (un)?check the following categories: (.*)/ do |uncheck, category_list|

	category_list.split(",").each do |category|
	uncheck ? uncheck("category_"+category.strip) : check("category_"+category.strip)
	end
 end

When /^I (un)?check all categories$/ do |uncheck|
	Deals.all_category.each do |category|
		uncheck ? uncheck("category_"+category.strip) : check("category_"+category.strip)
	end
end

Then /^I should (not )?see deals$/ do |no_clause, deals_table|

category_keys = {}
deals_table.hashes.each do |deals_row|
	if !no_clause then
		page.body.index( deals_row[:name] ).should_not == nil
	else
		page.body.index( deals_row[:name] ).should == nil
	end
		category_keys[deals_row[:category]] = 0
	end


	within 'tbody' do
	all('tr').count.should == deals_table.hashes.size
	end
   end
	Then /^I should see all of the deals$/ do
	within 'tbody' do
	all('tr').count.should == 10
	end
   end

	Then /^I should see categories checked:(.*)$/ do | category_list|
	within("form") do
	category_list.split(",").each do |category|
	find_by_id("category_"+category.strip).should be_checked
	end
    end
end
