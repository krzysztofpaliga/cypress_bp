import {Before, Given, When, Then} from "cypress-cucumber-preprocessor/steps"

When('I click on the first article with the keyword {string}', function (keyword) {
    cy.get("._9c44d_3pyzl").first().get("article").first().get(`a:contains(${keyword})`).first().click()
})

Then("I land on the -oferta- page", function() {
    cy.url().should("contain", "oferta")
})

When("I press the -add to cart- button", function () {
    cy.get("#add-to-cart-button").click()
})

Then("The cart articles counter should be equal to {int}", count => {
    cy.get("div[data-role=cart-quantity]").should("contain", count)
})

When("I press the -continue shopping- button", function() {
    cy.get("button[data-analytics-interaction-label=continueShopping]").click()
})

When("I press the -cart- button", function() {
    cy.get("a[href=\\/koszyk]").first().click()
})

When("I remove first item from the cart", function() {
    cy.get("section._9f0v0:nth-child(4) > seller-offers:nth-child(1) > div:nth-child(2) > item:nth-child(1) > div:nth-child(1) > div:nth-child(2) > offer-row:nth-child(1) > div:nth-child(1) > div:nth-child(2) > button:nth-child(1) > i:nth-child(1)").click()
})