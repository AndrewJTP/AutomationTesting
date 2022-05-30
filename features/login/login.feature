Feature: Login user
		As a user Coreteam
		I want to login to the Start App Americas Together
		so i test that the login works correctly

Scenario: Login as a Coreteam        
	Given I am located on the homepage of StartApp
		And I click on the "Iniciar Sesión" button
	When I fill the email with "coreteam@gmail.com"
		And the password with "123456"
		And click on the "INICIAR SESION" button
	Then if I click on "Cuenta" i should see the username "Core Team"
    	And "coreteam" role