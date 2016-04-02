Feature: Sign up to Bearcat food search
  
  As a user 
  So that I can rate the food in the variety of outlets
  I would want to create a profile by signing up 

  Scenario: Go to sign up page
   When I am on the Bearcat home page
   When I click on the "Sign Up" link
   Then I should see the "Sign Up" page
   
  Scenario: create a new sign up with valid format
   When I am on the Sign Up page
   And  I fill in "Name" with "Sunil"
   And  I fill in "Email" with "ssahu1@binghamton.edu"
   When I click on the "Submit" button to sign up
   Then I should see the "User was successfully created" message

  Scenario: create a new sign up with invalid format
   When I am on the Sign Up page
   And  I fill in "Name" with ""
   And  I fill in "Email" with "ssahu1.edu"
   When I click on the "Submit" button to sign up
   Then I should see the "User was successfully created" message   