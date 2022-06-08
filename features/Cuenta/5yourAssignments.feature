Feature: check your assigned sections
		As a user like a Coreteam
		I want to see my assignments
		so i test that my account works correctly

Background:
    Given I am located on the homepage of StartApp
    And I click the "Iniciar Sesión" button
    And I fill the email with "coreteam@gmail.com"
    And the password with "123456"
    And press the "Iniciar Sesión" button

@AssignmentsTests
Scenario: check account assignments       
	Given I am located on the homepage of StartApp
	When press the "Cuenta" button
	And press the "<assignmentsName>" button
	Then I should see the "<assignments>" section

Examples:
| assignmentsName  | assignments 	 |
| Tus Eventos	 	 | TUS EVENTOS   |
| Tus Proyectos  	 | TUS PROYECTOS |
| Tus Logros	 	 | TUS LOGROS 	 |