Feature: Create project as a Coreteam role
As an user whit the coreteam role
I want to create a new project
so I will check that the project creation works correctly

@newProjectTests
Scenario: Create a new project
	Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
    	And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Proyectos" tab
    When press the "Crear proyecto" button
    	And I fill the next fields with the following
        | fecha_inicio          | 10102022                             | 
        | fecha_fin             | 10112022                             |
        | titulo                | Proyecto CPTA                        | 
        | descripcion           | esto es una descripcion              |
        | objetivo              | entonces esto es un objetivo no?     |	  
        And I click on "crearProyecto1" button
    Then I see the card "Medio Ambiente" and click on it
        And click in the project card "Proyecto CPTA"
        And I should see my project on the list of projects with the following information
        | fecha_inicio          | 2022-10-10                             | 
        | fecha_fin             | 2022-10-11                             |
        | titulo                | Proyecto CPTA                                   | 
        | descripcion           | esto es una descripcion                |
        | objetivo              | entonces esto es un objetivo no?       |      