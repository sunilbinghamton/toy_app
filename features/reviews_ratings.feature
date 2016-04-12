Feature: Reviews and ratings to a food outlets
  
  As a User (student), 
  if I like food in a particular place, I can provide my reviews and rating for that place.
  
Background: User must login BearcatsFoodSearch

Given the following food outlets exist:
  | foodcourts                    | foodoutlets  |    
  | marketplace                   | Mein Bowl     |
  |                               | Tully's       |

And I selected particular Food Outlet

Scenario: Ratings to a food outlets
  When I select Food Outlet 
  And  I press "Rate" button
  Then I should click on "Stars" button to give user ratings

Scenario: Reviews to a food outlets
  When I select Food Outlet 
  And  I press "Rate" button
  Then I should write "Reviews" text field to give user reviews
