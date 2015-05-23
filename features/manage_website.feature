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
	And I fill in "worker_name" with "BOBBY"
	And I check the following skills: Teacher, Driver
	And I fill in "worker_age" with "22"
	And I press "Save Changes"
	Then I should be on the homepage
	And I should see "BOBBY"

	Scenario: Set workers age
	Given I am on the homepage
	When I follow "More about Aladdin"
	And I follow "Edit"
	And I fill in "worker_age" with "9"
	And I press "Save Changes"
	Then I should be on the homepage
	And I should see "9"
