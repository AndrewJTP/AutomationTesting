Feature: check your assigned sections
		As a user like a Coreteam
		I want to see my assignments
		so i test that my account works correctly

Background:
    Given I am located on the homepage of StartApp
    And I click the "Iniciar Sesión" button
    And I fill the email with "coreteam@gmail.com"
    And the password with "123456"
    And press the "Iniciar Sesión" button

Scenario: change my availability
    Given I click the "Cuenta" button
    And the label says "<labelMessage>"
    When I press the message
    Then I should see the "<oppositeMessage>"

Examples:
| labelMessage 	     | oppositeMessage  |  
| Estoy disponible	 | No disponible    | 
| No disponible      | Estoy disponible | 
