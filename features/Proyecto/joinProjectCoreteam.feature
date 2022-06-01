Feature: join a project as Coreteam
As an user with the role Coreteam
I want to join an existing project
so I will check that the project join works correctly

Background:
    Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
        And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Proyectos" tab
        And I see the card "Medio Ambiente" and click on it

@maximize
Scenario: join a existing project of a individual project
    Given click in the project card "participacionAAC"
    When I click the "Unirme" button
    Then i should see the message "Participacion exitosa"

@maximize
Scenario: unjoin a existing project of a individual project
    Given click in the project card "dejarParticipacionAAC"
    When I click the "Unirme" button
        And I click the "Dejar Proyecto" button
    Then i should see the message "Participacion cancelada"