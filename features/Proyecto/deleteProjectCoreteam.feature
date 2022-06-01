Feature: delete project as a Coreteam role
As an user with the coreteam role
I want to delete an existing project
so I will check that the project delete works correctly

@deleteProjectTests
Scenario: Delete a joined project
	Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
    	And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Proyectos" tab
        And I see the card "Medio Ambiente" and click on it
        And click in the project card "Proyecto CPTA"
        And I click the "Unirme" button
    When I click the "Eliminar" button
        And confirm delete pressing "eliminar"
    Then i should see the message "Se elimino correctamente."