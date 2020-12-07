Feature: Signup

  I want to be able to signup to amazon.com using 10minutemail.com.
  10minutemail.com enables to use email boxes created before our tests are run.
  Cypress does not allow to open new window or tabs, so it is not trivial to
  receive emails send to 10minutemail.com. It would require further investigation.

  @10minutemail @ignore
  Scenario: Signup of fresh (10minutemail) adult user (happy path)
    Given  I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type the 10minutemail email in
    And   I type a password in
    And   I press the -I am adult- button
    And   I check the -terms agreement- checkbox
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page