Feature: Login to Bearcat food search

 As a user
 So that I can rate as many food items as I want
 I want to Login

 Background: Sign up details have been added to the database
   
   Given the following signup details exist in database:
    |name              |email                   |password  |    
    |Matt              |matt@binghamton.edu     | mattyu89     |
    |Neil              |neil@binghamton.edu     | patrickk983   |

Scenario: Go to Login page
    When I am on the Bearcat home page
    And I click on the "Login" link
    Then I should see the "Login" page

Scenario: Login with valid credentials
   When I am on the Login page
   And  I fill in "Email" with "matt@binghamton.edu"
   And  I fill in "Password" with "matty"
   When I click on the "Submit" button to Login
   Then I should see the "User Login successful" message

Scenario: Login with invalid format
   When I am on the Login page
   And  I fill in "Email" with "matt.sifj"
   And  I fill in "Password" with "owj"
   When I click on the "Submit" button to Login
   Then I should see the "include an '@'" flash message

   
Scenario: Login with invalid credentials
   When I am on the Login page
   And  I fill in "Email" with "ssahu1@binghamton.edu"
   And  I fill in "Password" with "123456"
   When I click on the "Submit" button to Login
   Then I should see the "Invalid credentials. Try again" message   