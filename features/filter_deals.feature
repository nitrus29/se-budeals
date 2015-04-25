Feature: display list of deals filtered by Category
 
  As a buyer
  So that I can quickly browse the list of ads
  I want to see ads matching only certain categories

Background: deals have been added to database

  Given the following ads exist:
  | category                | name   			 | price        |
  | Books                   | Software as a Service      | $30		|
  | Housing	            | 2 BHK apartment            | $450		|
  | Electronics		    | IPhone 5		         | $400		|
  | Others                  | Guitar			 | $50		|

  And  I am on the BUDeals display deals page

Scenario: all categories selected

	When I check all categories
	And I press "View"
	Then I should see all of the ads


Scenario: restrict to movies with 'Housing' or 'Others' Categories

# enter step(s) to check the 'Housing' and 'others' checkboxes
	When I check the following ratings: Housing, Others
# enter step(s) to uncheck all other checkboxes
	And I uncheck the following ratings: Books, Electronics
# enter step to "search" the search form on the page
	And I press "View"
# enter step(s) to ensure that Housing and Others ads are visible
	Then I should see ads
  | category                | name   			 | price        |
  | Housing	            | 2 BHK apartment            | $450		|
  | Others                  | Guitar			 | $50		|
# enter step(s) to ensure that other ads are not visible
	And I should not see ads
  | category                | name   			 | price        |
  | Books                   | Software as a Service      | $30		|
  | Electronics		    | IPhone 5		         | $400		|

