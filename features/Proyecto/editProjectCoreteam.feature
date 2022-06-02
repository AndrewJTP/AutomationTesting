Feature: edit project as a Coreteam role
As an user with the coreteam role
I want to edit an existing project
so I will check that the project edit works correctly


Background:
    Given I am located on the homepage of StartApp
        And I click the "Iniciar Sesión" button
        And I fill the email with "coreteam@gmail.com"
        And the password with "123456"
        And press the "Iniciar Sesión" button
        And I press on "Proyectos" tab
        And I click on the card called "Educacion"
@maximize
Scenario: edit a project 1
    When click in the botton edit of project card "Juansitopinto"
        And I fill the next fields with the following
        | fecha_inicio          | 11112022                             | 
        | fecha_fin             | 12122022                             |
        | titulo                | BonoJuansito                         | 
        | descripcion           | esto es una descripcion              |
        | objetivo              | entonces esto es un objetivo no?     |
        And I click on "GUARDAR CAMBIOS" button
    Then click in the project card "BonoJuansito"
        And I should see my project on the list of projects with the following information
        | fecha_inicio          | 2022-11-11                             | 
        | fecha_fin             | 2022-12-12                             |
        | titulo                | BonoJuansito                           | 
        | descripcion           | esto es una descripcion                |
        | objetivo              | entonces esto es un objetivo no?       |

@maximize
Scenario: edit a project 2
    When click in the botton edit of project card "BonoJuansito"
        And I fill the next fields with the following
        | fecha_inicio          | 10102022                             | 
        | fecha_fin             | 11112022                             |
        | titulo                | Juansitopinto                         | 
        | descripcion           | esto es una descripcion              |
        | objetivo              | entonces esto es un objetivo no?     |
        And I click on "GUARDAR CAMBIOS" button
    Then click in the project card "BonoJuansito"
        And I should see my project on the list of projects with the following information
        | fecha_inicio          | 2022-10-10                             | 
        | fecha_fin             | 2022-11-11                             |
        | titulo                | Juansitopinto                           | 
        | descripcion           | esto es una descripcion                |
        | objetivo              | entonces esto es un objetivo no?       |