Feature: check your assigned sections
		As a user like a Leader
		I want to edit my profile data
		so i test that the opcion edit profile works correctly

Background:
    Given I am located on the homepage of StartApp
    And I click the "Iniciar Sesión" button
    And I fill the email with "lider@gmail.com"
    And the password with "123456"
    And press the "Iniciar Sesión" button

Scenario: Edit my profile
    Given I click the "Cuenta" button
    And I click on "Editar Perfil"
    And I change my data in the form to Edit my profile
		| Profesion u oficio | Abogado |
		| Ciudad de residencia | La Paz |
		| Genero | Masculino |
		| Nombre de contacto de emergencia | pepito gustavo |
		| Relación con contacto de emergencia | Hermano |
		| Número de contacto de emergencia | 78865486 |
		| Mi pequeña descripción |  Me gusta leer |
    When press the "Guardar Cambios" button
    Then I should press the "Editar Perfil" button and see the change on career "Abogado" 

Scenario: Edit my profile with a blank space in career
    Given I click the "Cuenta" button
    And I click on "Editar Perfil"
    And I erase the career field
    When press the "Guardar Cambios" button
    Then I should press the "Editar Perfil" button and see the change on career "" 