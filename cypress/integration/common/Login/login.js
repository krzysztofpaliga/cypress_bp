import { Before, Given, When, Then } from "cypress-cucumber-preprocessor/steps"

let loginUser
Before({tags: "@login"}, function() {
    cy.readFile("password.json").then(($user) => {
        loginUser = $user
    })
})
When("I press the -login- button", function() {
    cy.get("a[data-analytics-click-value=login-button]").click()
})

Then("I land on the -login- page", function() {
    cy.url().should("contain", "login/form")
})

When("I enter the email", function() {
    cy.get("#username").type(loginUser.email)
})

When("I enter the password", function() {
    cy.get("#password").type(loginUser.password)
})

When("I press the -log me in- button", function() {
    cy.get("button#login-button").click()
})

Then("I land on the -2FA- page", function() {
    cy.url().should("contain", "dwustopniowe-logowanie")
})

When("I press the the -decline 2FA- button", function() {
    cy.get("a.msts_n7:nth-child(1)").click()
})

When("I login", function() {
    cy.login()
})