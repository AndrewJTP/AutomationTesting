Feature: join a project as user
As an user with the role Coreteam,Lider,Voluntario
I want to join an existing project
so I will check that the project join works correctly

@joinProjectTests
Scenario: join a existing project
	Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
    	And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Proyectos" tab
        And I see the card "Medio Ambiente" and click on it
        And click in the project card "zzz1"
    When I click the "Unirme" button
    Then i should see the message "Participacion exitosa"