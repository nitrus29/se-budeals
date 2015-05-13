require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I am on (.+)$/) do |page_name|
  visit page_name
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "(.*?)"$/) do |button|
  click_link_or_button(button)
end

Then(/^I choose 'Edit'$/) do
end

Then(/^show me the deal on the display page$/) do
# save_and_open_page 
puts page.body
end


Then(/^the page should have the message "(.*?)"$/) do |arg1|

end


