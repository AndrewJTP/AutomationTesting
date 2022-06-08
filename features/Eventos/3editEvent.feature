Feature: Edit event as a Coreteam role
As an user whit the coreteam role
I want to edit a existing event
so I will check that the event was edited correctly
Background:
Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
    	And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
@editEventTests
Scenario: Edit an existing event
	Given I press on "Eventos" tab
    When I click in the event card "PruebaEventoCoreteam" button
        And I click in the edit event button "Editar"
    	And I fill the edit events fields with the following
        | fecha_evento          | 10112022                          |
        | nombre_evento         | PruebaEventoEdited                | 
        | descripcion_evento    | esto es una descripcion editada   |
        | lugar_evento          | La paz                            |	 
        And I click on save event "Guardar Cambios" button 
    Then I should see my event edited with the following information
    |  nombre_evento        | PruebaEventoEdited | 
    |  descripcion_evento   | esto es una descripcion editada  |	  
    |  lugar_evento         | La paz  |