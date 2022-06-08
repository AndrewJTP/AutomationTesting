Feature: search for all coreteams
		As a coreteam 
		I would like to see all the records of coreteams
		so I test that the user finder works

Background:
    Given I am located on the homepage of StartApp
    And I click the "Iniciar Sesión" button
    And I fill the email with "coreteam@gmail.com"
    And the password with "123456"
    And press the "Iniciar Sesión" button
    
Scenario: check user list
        Given I click the "Usuarios" button
        When select the option "Rol" as the criterion
        And I select the "core team" option
        Then I could see the Name "Core Team" in the list