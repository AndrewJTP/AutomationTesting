Feature: Login of User
		As a user like a Coreteam, Lider, Voluntario
		I want to login to the Start App Americas Together
		so i test that the login works correctly

@loginTests
Scenario: Login as a <userRol>        
	Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
	When I fill the email with "<email>"
		And the password with "123456"
		And press the "Iniciar Sesión" button
	Then if I press on "Cuenta" i should see the username "<userName>"
    	And "<userRol>" role

Examples:
| userRol 	 	| email  	 			| userName 				|
| core team 	| coreteam@gmail.com 	| Core Team				|
| lider 		| lider@gmail.com 		| Lider					|
| voluntario	| voluntario@gmail.com 	| Voluntario Voluntario	|