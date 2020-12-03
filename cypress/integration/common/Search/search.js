import {When, Then} from "cypress-cucumber-preprocessor/steps"

When("I search for {string}", article => {
    cy.get("input[data-role=search-input").type(article)
})

When("I press the -search- button", function() {
    cy.get("button[data-role=search-button]").click()
})

Then("I see at least {int} articles", function(count) {
    cy.get("article").should("have.length.at.least", count)
})