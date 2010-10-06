Feature: Administration
  In order to manage the runners
  An administratrator should be able to add/delete/edit users

  @wip
  Scenario: Login Successfully
    Given the following users:
      | username | password |
      | eric | password |
    When I go to the home page
    And I fill in the following
      | username | eric |
      | password | password |
    And I press "login"
    Then I should be on the admin page

  @wip
  Scenario: Login Unsuccessfully
    Given the following users:
      | username | password |
      | eric | password|
    When I go to the home page
    And I fill in the following
      | username | eric |
      | password | wrong |
    And I press "login"
    Then I should be on the home page
    And I should see "Login failed"

  @wip
  Scenario: A non-logged in user tries to go to the admin section
    Given There are no users
    When I go to the admin page
    Then I should be on the home page

