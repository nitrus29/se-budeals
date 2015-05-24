Feature:
As a user, after I log in,
So that I can choose to Create a Deal, View a Deal,
Remove my Ad,
Then I want to see all the Options listed on the Menu Page

Scenario: Menu
Given I am on http://localhost:3000/static_pages/login
Then I press "Login"
Then I am on http://localhost:3000/static_pages/index
Then show me menu of options like display and create
