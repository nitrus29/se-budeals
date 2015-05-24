Feature:
As a user who posted the ad,
So that I can delete the ad after it has been sold,
Then I want the option to delete my ads.

Scenario: Remove Advertisement
Given I am on http://localhost:3000/deals
Then I press "Remove" for the name "Guitar"
Then I press "OK" in the alert box
Then I am on http://localhost:3000/deals
Then show me the display page with the deal removed from the page

Scenario: Remove Advertisement
Given I am on http://localhost:3000/deals
Then I press "Remove" for the name "Guitar"
Then I press "Cancel" in the alert box
Then I am on http://localhost:3000/deals
Then show me the display page without any changes
