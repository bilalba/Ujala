Feature: Manage my website
	
	In Order to offer more diversed workers to my customers
	As a administrator
	I want to add a workers with their details

	Background:
	Given the following workers exist:
  
  | name                    | age 	 | skills 			|
  | Aladdin                 | 12     | Teacher, Driver  |
  | The Terminator          | 34     | Teacher, Driver  |
  | When Harry Met Sally    | 32     | Teacher, Driver  |
  | The Help                | 13  	 | Teacher, Driver  |
  | Chocolat                | 16   	 | Teacher, Driver  |
  | Amelie                  | 98     | Teacher, Driver  |
  | 2001: A Space Odyssey   | 65     | Teacher, Driver  |
  | The Incredibles         | 56     | Teacher, Driver  |
  | Raiders of the Lost Ark | 73     | Teacher, Driver  |
  | Chicken Run             | 72     | Teacher, Driver  |

	Scenario: Add a worker
	Given I am on the homepage
	When I follow "Add_new_worker"
	Then I should be on add a worker
	And I should see a text feild
	And I append "bob" with it
	And I should see a drop down menu
	And I select a tag with "teacher"
	And I press "back to main" button
	Then I should be on the homepage
	And I should see "bob" with tag "teacher"

	Scenario: Rate a worker
	Given I am on the homepage
	When I press on "more about alice" button
	Then I should see a "more about alice" page
	And I should see a "rating" field
	When I append "9" with it
	Then I should be on the main page
	And I should see alice's rating as "9"
