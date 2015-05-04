Feature: Manage my website
	
	In Order to offer more diversed workers to my customers
	As a administrator
	I want to add a workers with their details

	Background:
	Given the following movies exist:
  | name                   	| tag 	| release_date |
  | alice                 	| G     | 25-Nov-1992  |
  | The Terminator          | R     | 26-Oct-1984  |

	Scenario: Add a worker
	Given I am on the homepage
	When I press the "add a new worker" button
	Then I should be on "add a worker" page
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
