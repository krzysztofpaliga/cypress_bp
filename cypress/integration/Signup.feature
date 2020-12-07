Feature: Signup

  I want to be able to signup to amazon.com using a randomly generated email.
  It does not allow to receive emails, so no signup confirmation emails can be
  processed. But it does allow for signup testing up this point.

  @randomMail @smoke
  Scenario: Signup of a random adult user (happy path)
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a random email in
    And   I type a password in
    And   I press the -I am adult- button
    And   I check the -terms agreement- checkbox
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page

  @randomMail
  Scenario: Signup of a random adult user (agreement box unchecked)
  Test if signup of an adult user does not proceed without the required
  agreement checkbox checked.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a random email in
    And   I type a password in
    And   I press the -I am adult- button
    And   I press the -create account- button
    And   I see the -terms agreement- reminder
    And   I check the -terms agreement- checkbox
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page

  @randomMail
  Scenario: Signup of a random underage user (agreement boxes unchecked)
  Test if signup of an under user does not proceed without the required
  agreement checkboxes checked.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a random email in
    And   I type a password in
    And   I press the -I am underage- button
    And   I type an underage birth date in
    And   I press the -create account- button
    And   I see the -terms agreement- reminder
    And   I see the -junior agreement- reminder
    And   I check the -terms agreement- checkbox
    And   I check the -junior agreement- checkbox
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page

  @randomMail
  Scenario: Signup of a random underage user (no birth date entered)
  Test if signup of an under user does not proceed without the required
  birth date entered.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a random email in
    And   I type a password in
    And   I press the -I am underage- button
    And   I check the -terms agreement- checkbox
    And   I check the -junior agreement- checkbox
    And   I press the -create account- button
    And   I see the -enter birth date- reminder
    And   I type an underage birth date in
    And   I press the -create account- button
    Then   I land on the -registration confirmation- page

  @randomMail
  Scenario: Signup of a random adult user (no adult/underage declaration)
  Test if signup of an under user does not proceed without the required
  adult/underage declaration.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a random email in
    And   I type a password in
    And   I check the -terms agreement- checkbox
    And   I press the -create account- button
    And   I see the -adult declaration- reminder
    And   I press the -I am adult- button
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page

  @randomMail
  Scenario: Signup of a random user (no email entered)
  Test if signup of an under user does not proceed without the required
  email entered.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a password in
    And   I check the -terms agreement- checkbox
    And   I press the -create account- button
    And   I press the -I am adult- button
    And   I press the -create account- button
    And   I see the -enter email- reminder
    And   I type a random email in
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page

  @randomMail 
  Scenario: Signup of a random user (invalid email format entered)
  Test if signup of an under user does not proceed without the required
  password entered.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type an invalid email format in
    And   I type a password in
    And   I check the -terms agreement- checkbox
    And   I press the -I am adult- button
    And   I press the -create account- button
    And   I scroll to the top
    And   I see the -invalid email format- reminder
    And   I type a random email in
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page

  @randomMail
  Scenario: Signup of a random user (no password entered)
  Test if signup of an under user does not proceed without the required
  password entered.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a random email in
    And   I check the -terms agreement- checkbox
    And   I press the -I am adult- button
    And   I press the -create account- button
    And   I scroll to the top
    And   I see the -enter password- reminder
    And   I type a password in
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page

  @randomMail 
  Scenario: Signup of a random user (invalid password format entered)
  Test if signup of an under user does not proceed without the required
  password format entered.
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I press the -my allegro- button
    And   I press the -register- button
    And   I land on the -registration- page
    And   I type a random email in
    And   I type an invalid password format in
    And   I check the -terms agreement- checkbox
    And   I press the -create account- button
    And   I press the -I am adult- button
    And   I press the -create account- button
    And   I see a -invalid password format- reminder
    And   I type a password in
    And   I press the -create account- button
    Then  I land on the -registration confirmation- page
