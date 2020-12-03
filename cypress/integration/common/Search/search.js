import {When, Then} from "cypress-cucumber-preprocessor/steps"

When("I search for {string}", product => {
    cy.get("input[data-role=search-input").type(product)
})