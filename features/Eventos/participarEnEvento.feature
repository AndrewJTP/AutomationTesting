Feature: participate in an event as a Coreteam role
As an user whit the coreteam role
I want to participate a existing event
so I will check that the participation was successful

@participateEventTests
Scenario: participate an existing event
	Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
    	And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Eventos" tab
    When I click in "PruebaEventoCoreteam" participation button
    