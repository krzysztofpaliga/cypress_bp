Feature: Login

  I want to be able to login to allegro.pl using a registered test account

  @login @current
  Scenario: Login (happy path)
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -login- button
    And   I enter the email
    And   I enter the password
    And   I press the -log me in- button
    Then  I land on the -2FA- page
    And   I press the the -decline 2FA- button
