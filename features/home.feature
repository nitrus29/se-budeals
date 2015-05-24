Feature:
As a user
So that I can use BUDeals website
I want to buy or sell products

Scenario: from Register
Given I am on http://localhost:3000/students/new
Then I press "Sign up"
Then I am on http://localhost:3000/static_pages/home
Then show me home page

Scenario: from FAQs
Given I am on http://localhost:3000/static_pages/faq
Then I press "BACK TO HOME"
Then I am on http://localhost:3000/static_pages/home
Then show me home page
