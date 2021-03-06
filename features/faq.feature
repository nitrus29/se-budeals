Feature: FAQs
As a user
So that I can view how to use the website
Then I want to see the FAQs page

Scenario: View FAQs
Given I am on http://localhost:3000/static_pages/home
Then I press "FAQ"
Then I am on http://localhost:3000/static_pages/faq
Then show me the list of Frequently Asked Questions and their answers

Scenario: Back to Home
Given I am on http://localhost:3000/static_pages/faq
Then I press "BACK TO HOME"
Then show me the home page
