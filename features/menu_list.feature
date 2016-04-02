Feature: List the menu with prices
 
  As a user, 
  I want to see the list of menu items of the selected outlet. 

Background: Food outlet has been selected

  Given the following outlet exists :
  | Food Courts         |             
  | Marketplace         |         
  | Hinman              |          


  And  I am on the food court listing page


Scenario: Display the list of menu items for selected outlet
  When I select a food outlet
  Then I should see "A list of menu items for that outlet "
  And  I should see " a max of 10 menu items listed in one page with price and rating for each of the menu item"
