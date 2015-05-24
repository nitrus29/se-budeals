Feature:
Each user needs to login using the credentials he used to register with the system.
As a user
So that I can login as a user
I want to login to the system either to buy or sell an item
Scenario:Login
Given I am on http://localhost:3000/static_pages/home
Then I press "LOGIN"
Then I am on http://localhost:3000/static_pages/login
Then show me the page to login to the website as an authorized user
