Feature: Menu Page
As a user, after I log in,
So that I can choose to Create a Deal, View a Deal
Then I want to see all the Options listed on the Menu Page

Scenario: View Menu
Given I am on http://localhost:3000/static_pages/login
Then I fill in Email and Password
Then I press "Login"
Then I am on http://localhost:3000/static_pages/index
Then show me menu with options DISPLAY DEALS and CREATE DEALS
