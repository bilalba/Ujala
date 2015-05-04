Feature: display all the workers with selected tags
	
	In order to find workers
	As a user
	I want to see all the workers in Ujala's database

	Background: workers have been added to database

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

  And I am on the home page

  Scenario: all tags selected
  When I press show button
  Then I should see all the workers

  Scenario: restrict to workers with 'painter' or 'carpenter' tags
  When I check the following tags: painter, carpenter
	And I uncheck the following ratings: teacher, driver
	And I press "Refresh"
	Then I should be on the home page
	Then I should see "Amelie"
	Then I should see "Raiders of the Lost Ark"
	Then I should see "The Incredibles"
	Then I should see "The Terminator"
	Then I should see "When Harry Met Sally"
	Then I should not see "Aladdin"
	Then I should not see "Chocolat"
	Then I should not see "The Help"
	Then I should not see "2001: A Space Odyssey"
	Then I should not see "Chicken Run"

