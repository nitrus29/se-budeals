Feature: REGISTER
As a user
So that I can be registered
I want to add my details to become part of the system as either a seller or buyer

Scenario: Show Registration Page
Given I am on http://localhost:3000
Then I press "REGISTER"
Then I am on http://localhost:3000/students/new
Then show me the registration page
