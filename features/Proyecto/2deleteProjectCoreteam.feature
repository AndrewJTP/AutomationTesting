Feature: delete project as a Coreteam role
As an user with the coreteam role
I want to delete an existing project
so I will check that the project delete works correctly

@maximize
@loginWithCoreteam
Scenario: Delete a joined project
	Given I press on "Proyectos" tab
        And I see the card "Empoderamiento" and click on it
        And click in the project card "papa"
        And I click the "Unirme" button
    When I click the "Eliminar" button
        And confirm delete pressing "eliminar"
    Then I see the card "Empoderamiento" and click on it
        And the number of projects should be reduced by 1