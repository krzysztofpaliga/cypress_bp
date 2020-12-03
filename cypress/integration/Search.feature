Feature: Searching for products

  I want to be able to search for products

  Scenario: Search for "płyn dezynfekujący"
    Given I open the -allegro home- page
    And   I press the -consent- button if required
    And   I search for "płyn dezynfekujący"