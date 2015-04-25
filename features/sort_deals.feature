Feature: display list of ads sorted by different criteria
 
  As a buyer
  So that I can quickly browse deals based on my preferences
  I want to see ads sorted by price

Background: deals have been added to database
  
  Given the following ads exist:
  | category                | name   			 | price        |
  | Books                   | Software as a Service      | $30		|
  | Housing	            | 2 BHK apartment            | $450		|
  | Electronics		    | IPhone 5		         | $400		|
  | Others                  | Guitar			 | $50		|

  And I am on the BUDeals display deals page


Scenario: sort ads in increasing order of price
	When I follow "price"
	Then I should see "Software as a Service" before "Guitar"

Scenario: sort deals alphabetically
	When I check the following ratings: Books, Housing, Electronics, Others
	And I press "View"
	And I follow "Category"
	Then I should see "Books" before "Electronics"


