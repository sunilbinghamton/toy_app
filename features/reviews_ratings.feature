Feature: Reviews and ratings to a food outlets
  
  As a User (student), 
  if I like food in a particular place, I can provide my reviews and rating for that place.
  
Background: User must login BearcatsFoodSearch

Given the following food outlets exist:
  | Food Courts                   | Food Outlets  |    
  | marketplace                   | Mein Bowl     |
  |                               | Tully's       |

And I have selected particular Food Outlet

Scenario: Ratings to a food outlets
  When I select particular Food outlet 
  And  I press "Rate" button
  Then I should see the rate page with "ratings and reviews" text field
  And  I should click on stars to give user ratings

Scenario: Reviews to a food outlets
  When I select particular Food outlet 
  And  I press "Rate" button
  Then I should see the rate page with "ratings and reviews" text field
  And  I should write "Reviews" text field to give user reviews
