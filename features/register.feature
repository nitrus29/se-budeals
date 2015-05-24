Feature:
As a user
So that I can be registered
I want to add my details to become part of the system as either a seller or buyer
Scenario: Register
Given I am on http://localhost:3000/static_pages/home
Then I press "Register"
Then I am on http://localhost:3000/students/new
Then show me form to register as a user
