import { Given } from "cypress-cucumber-preprocessor/steps"
import { When } from "cypress-cucumber-preprocessor/steps"
import { Then } from "cypress-cucumber-preprocessor/steps"
import { Before } from "cypress-cucumber-preprocessor/steps"

When('I press the -register- button', function() {
    cy.get("a[data-analytics-click-value=register-button]").click()
})

Then('I land on the -registration- page', function() {
    cy.url().should("contain", "rejestracja")
})

When('I type a random email in', function () {
    let r = Math.random().toString(36).substring(7);
    cy.get("#email").clear().type(`randomemail${r}@gmail.com`)
});

When("I type an invalid email format in", function() {
    cy.get("#email").type("wrongformatemail.com")
})

Then("I see the -enter email- reminder", function() {
    cy.contains("Wpisz adres e-mail").should("be.visible")
})

Then("I see the -invalid email format- reminder", function() {
    cy.contains("Niepoprawny adres e-mail").should("be.visible")
})

When('I type a password in', function() {
    cy.get("#password").clear().type("Password12345")
})

When('I type an invalid password format in', function() {
    cy.get("#password").type("abc")
})

Then('I see a -invalid password format- reminder', function() {
    cy.contains("wielka litera").should("have.css", "color", "rgb(224, 33, 27)")
})

Then('I see the -enter password- reminder', function() {
    cy.contains("Podaj hasło").should("be.visible")
})

When('I press the -I am underage- button', function() {
    cy.get("label[for=isAdultNO]").click()
    // cy.contains('Mam mniej niż 18 lat').click()
})

When('I press the -I am adult- button', function() {
    cy.get("label[for=isAdultYES]").click()
    // cy.contains('Mam mniej niż 18 lat').click()
})

Then('I see the -adult declaration- reminder', function() {
    cy.contains("Wybierz przedział wiekowy, do którego należysz").should("be.visible")
})

Then('I land on the account creation page', function () {
    cy.get().should('include', 'account-creation')
});

When('I type my first name in', function () {
    cy.get("#customer_firstname").type(this.user.firstName)
})

When('I type my last name in', function () {
    cy.get("#customer_lastname").type(this.user.lastName)
})

When('I type a birth date in', function() {
    cy.get("#birthDate").type("1982-12-30")
})

When('I type an underage birth date in', function() {
    cy.get("#birthDate").type("2006-12-30")
})

Then('I see the -enter birth date- reminder', function() {
    cy.contains("Podaj datę urodzenia").should("be.visible")
})

When('I check the -terms agreement- checkbox', function() {
    cy.get("label[for=agreementTerm]").click()
})

Then('I see the -terms agreement- reminder', function () {
    cy.contains("Zaakceptuj Regulamin Allegro").should("be.visible")
})

When('I check the -junior agreement- checkbox', function() {
    cy.get("label[for=juniorAgreement]").click()
})

Then('I see the -junior agreement- reminder', function() {
    cy.contains("Wyraź zgodę, aby założyć konto").should("be.visible")
})

When('I press the -create account- button', function() {
    cy.get("form").submit()
    // cy.contains("Utwórz konto").click()
})

Then('I land on the -registration confirmation- page', function() {
    cy.url().should('contain', 'rejestracja/potwierdzenie')
})

When("I scroll to the top", function() {
    cy.scrollTo("top")
})