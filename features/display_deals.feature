Feature: Display Deal
As a user
So that I can view the deals
I want to find a suitable deal from the BUdeal$ website

Scenario: Display a deal
Given I am on http://localhost:3000/static_pages/index
And I press "DISPLAY DEALS"
Then I am on http://localhost:3000/deals
Then show me the deal on the display page
