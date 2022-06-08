Feature: participate in an event as a Coreteam role
As an user whit the coreteam role
I want to participate a existing event
so I will check that the participation was successful

@loginWithCoreteam
Scenario: participate an existing event
	Given I press on "Eventos" tab
    When I click in "PruebaEventoCoreteam" participation button
    Then i should see the message in snakbar "Tu participación en el evento ha sido registrada"