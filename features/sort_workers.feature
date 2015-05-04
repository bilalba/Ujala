Feature: display list of workers sorted by different criteria
 
  In Order to quickly go thorough a large list
  As an employer
  I want to see wokers sorted by names or ratings

Background: workers have been added to database
  
  Given the following workers exist:
  | name                    | age    | skills           |
  | Aladdin                 | 12     | Teacher, Driver  |
  | The Terminator          | 34     | Teacher, Driver  |
  | When Harry Met Sally    | 32     | Teacher, Driver  |
  | The Help                | 13     | Teacher, Driver  |
  | Chocolat                | 16     | Teacher, Driver  |
  | Amelie                  | 98     | Teacher, Driver  |
  | 2001: A Space Odyssey   | 65     | Teacher, Driver  |
  | The Incredibles         | 56     | Teacher, Driver  |
  | Raiders of the Lost Ark | 73     | Teacher, Driver  |
  | Chicken Run             | 72     | Teacher, Driver  |

  And I am on the home page

Scenario: sort workers alphabetically
  When I follow "Worker Names"
  Then I should see "Aladdin" before "The Terminator"
  And I should see "Chicken Run" before "The Help"

Scenario: sort movies in increasing order of age
  When I follow "ages"
  Then I should see "Aladdin" before "Amelie"
