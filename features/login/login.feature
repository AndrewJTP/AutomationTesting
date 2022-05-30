Feature: Login user
		As a user Coreteam
        I want to login to the Start App Americas Together
        so i test that the login works correctly

Scenario: Login as a Coreteam        
	Given I am located in the login section of StartApp
		And I click the "LOGIN" button
		I am located on the main page (home) of StartApp
	When I fill the email with "lider@gmail.com" and the password with "123456"
	And I click the button INICAR SESION
	Then if I click on Profile i should see "Pepe" as my name "Peponcio" as my last name
    And "lider" as my role



Feature: As a internet user
         I want to use the google search engine
         so I test that works correctly