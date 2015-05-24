Feature:
As a user
So that I can view Advertisements for what I want
I want to find a suitable seller whose products meet my requirements
Then I want the list of ads to be displayed
Scenario: Display ad
Given I am on http://localhost:3000/deals
And I press "show" for the name "guitar"
Then I am on http://localhost:3000/deals/12
Then show me the details of the deal
