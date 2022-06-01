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
        | titulo                | prueba cucumber coreteam             | 
        | descripcion           | esto es una descripcion              |
        | objetivo              | entonces esto es un objetivo no?     |	  
        And I click on "crearProyecto1" button
    
    Then I should see my project on the list of projects with the following information
    | titulo                | prueba cucumber | 
    |  objetivo             | entonces esto es un objetivo no?   |
    |  descripcion          | esto es una descripcion  |	  
    |  lider                | Inge  |