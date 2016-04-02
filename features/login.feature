Feature: loging in to Bearcat food search

 As a user
 So that I can rate as many food items as I want
 I want to login

 Background: Sign up details have been added to the database
   
   Given the following signup details exist in database:
    |First Name        |Email ID                |Username                      | Password  |    
    |Matt              |matt@binghamton.edu     | mattL                        | matty     |
    |Neil              |neil@binghamton.edu     | neilH                        | patrick   |

Scenario: Login
  Given a valid user
  When I go to the login page
  
  And I fill in the following:
    |Email|minikermit@hotmail.com|
    |Password|12345678|
  And I press "Sign in"
  Then I will see "Signed in successfully."