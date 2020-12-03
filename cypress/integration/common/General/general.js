import {Given, When} from "cypress-cucumber-preprocessor/steps";

Given('I open the -allegro home- page', function () {
    cy.visit("https://www.allegro.pl")
});

When('I press the -consent- button if required', function() {
    cy.get(":button[data-role=accept-consent]").then(($btn) => {
        if($btn.length > 0) {
            $btn.click()
        }
    })
})

When('I press the -my allegro- button', function() {
    cy.get("button[data-role=header-dropdown-toggle]").last().click()
    // cy.contains("Moje Allegro").click()
})