Feature: password Recovery
		As a volunteer
		I want to recover my password
		so i test that the password recovery function works correctly

Scenario: password recovery
	Given Im located on the homepage of StartApp
    And I click the "Iniciar Sesión" button 
	When I click the button "¿Has olvidado tu contraseña? Recupera tu contraseña."
	And fill the email with "voluntario@gmail.com"
	And I click the "Enviar Correo" button
	Then i should see the message "Se le ha enviado el correo de recuperación."