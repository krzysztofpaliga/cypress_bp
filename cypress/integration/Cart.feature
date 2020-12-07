Feature: I want to handle allegros cart manipulation

  Scenario: Adding some gloves to the cart should increase article count by 1
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I search for "maseczka"
    And   I press the -search- button
    And   I click on the first article with the keyword "MASECZKA"
    And   I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    Then  The cart articles counter should be equal to 1

  Scenario: Adding some medical gloves, masks and disinfectant fluid to the cart should increase article count by 3
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I search for "maseczka"
    And   I press the -search- button
    And   I click on the first article with the keyword "MASECZKA"
    And   I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    And   I open the -allegro home- page
    And   I search for "rękawiczki medyczne"
    And   I press the -search- button
    And   I click on the first article with the keyword "RĘKAWICZKI"
    And   I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    And   I open the -allegro home- page
    And   I search for "płyn dezynfekujący"
    And   I press the -search- button
    And   I click on the first article with the keyword "PŁYN"
    And   I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    Then  The cart articles counter should be equal to 3

  Scenario: Adding masks, medical gloves and removing masks should increase article count by 1
    Given I open the -allegro home- page
    When  I press the -consent- button if required
    And   I open the -allegro home- page
    And   I search for "maseczka"
    And   I press the -search- button
    And   I click on the first article with the keyword "MASECZKA"
    And   I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    And   I open the -allegro home- page
    And   I search for "rękawiczki medyczne"
    And   I press the -search- button
    And   I click on the first article with the keyword "RĘKAWICZKI"
    And   I land on the -oferta- page
    And   I press the -add to cart- button
    And   I press the -continue shopping- button
    And   I press the -cart- button
    And   I remove first item from the cart
    Then  The cart articles counter should be equal to 1