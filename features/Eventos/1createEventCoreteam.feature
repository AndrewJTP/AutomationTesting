Feature: Create event as a Coreteam role
As an user whit the coreteam role
I want to create a new event
so I will check that the event creation works correctly

@newEventTests
Scenario: Create a new event
	Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
    	And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Eventos" tab
    When press the "crear_evento" button
    	And I fill the next events fields with the following
        | fecha_evento          | 10112022                             |
        | nombre_evento         | PruebaEventoCoreteam                 | 
        | descripcion_evento    | esto es una descripcion              |
        | lugar_evento          | cochabamba                           |	  
        And I click on event "GuardarEvento" button
    Then I click in the event card "PruebaEventoCoreteam"
    And I should see my event on the list of events with the following information
    |  nombre_evento        | PruebaEventoCoreteam | 
    |  descripcion_evento   | esto es una descripcion  |	  
    |  lugar_evento         | cochabamba  |