Feature: I want to handle allegros cart manipulation
  
  Scenario: Adding some gloves to the cart should increase article count by 1
    Given I open the -allegro home- page
    And   I press the -consent- button if required
    Given I search for "maseczka"
    And   I press the -search- button
    And   I click on the first article with the keyword "maseczka"
    Then  I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    Then  The cart articles counter should be equal to 1

  Scenario: Adding some medical gloves, masks and disinfectant fluid to the cart should increase article count by 3
    Given I open the -allegro home- page
    And   I press the -consent- button if required
    Given I search for "maseczka"
    And   I press the -search- button
    And   I click on the first article with the keyword "maseczka"
    Then  I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    Given I search for "rękawiczki medyczne"
    And   I press the -search- button
    And   I click on the first article with the keyword "rękawiczki"
    Then  I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    Given I search for "płyn dezynfekujący"
    And   I press the -search- button
    And   I click on the first article with the keyword "płyn"
    Then  I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    Then  The cart articles counter should be equal to 1

  Scenario: Adding masks, medical gloves and removing masks should increase article count by 1
    Given I open the -allegro home- page
    And   I press the -consent- button if required
    Given I search for "maseczka"
    And   I press the -search- button
    And   I click on the first article with the keyword "maseczka"
    Then  I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    Given I search for "rękawiczki medyczne"
    And   I press the -search- button
    And   I click on the first article with the keyword "rękawiczki"
    Then  I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    When  I press the -cart- button