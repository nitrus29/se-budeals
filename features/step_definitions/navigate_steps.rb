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

When(/^I follow "([^"]*)"$/) do |link|
  click_link(link)
end


Then(/^I choose 'Edit'$/) do
end

Then(/^I choose 'Remove'$/) do
end

Then(/^I choose 'Show'$/) do
end

Then(/^show me the deal on the display page$/) do
end

Then(/^show me the deal on the edit page$/) do
end

Then(/^show me the list of Frequently Asked Questions and their answers$/) do
end

Then(/^show me the login page$/) do
end

Then(/^show me the FAQ page$/) do
end

Then(/^show me the home page$/) do
end

Then(/^show me the Menu page$/) do
end

Then(/^I fill in Email and Password$/) do
end

Then(/^I press Cancel in the alert box$/) do
end

Then(/^I press OK in the alert box$/) do
end

Then(/^show me the details of the deal/)do
end

Then(/^show me the registration page$/) do
end

Then(/^show me the display page with the deal removed from the page$/) do
end

Then(/^show me the display page without any changes$/) do
end

Then(/^show me menu with options DISPLAY DEALS and CREATE DEALS$/) do
end

Then(/^the page should have the message "(.*?)"$/) do |arg1|
end


