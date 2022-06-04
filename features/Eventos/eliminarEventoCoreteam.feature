Feature: Delete event as a Coreteam role
As an user whit the coreteam role
I want to delete a existing event
so I will check that the event deleted not found

@deleteEventTests
Scenario: Delete an existing event
	Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
    	And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Eventos" tab
    When I click in the delete event button of "PruebaEventoEdited"
    	And I click in the confirmation delete event button of "PruebaEventoEdited"
    Then the event "PruebaEventoEdited" shouldnt exist
    