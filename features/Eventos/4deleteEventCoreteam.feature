Feature: Delete event as a Coreteam role
As an user whit the coreteam role
I want to delete a existing event
so I will check that the event deleted not found

@loginWithCoreteam
Scenario: Delete an existing event
	Given I press on "Eventos" tab
    When I click in the delete event button of "PruebaEventoEdited"
    	And I click in the confirmation delete event button of "PruebaEventoEdited"
    Then the event "PruebaEventoEdited" shouldnt exist
    