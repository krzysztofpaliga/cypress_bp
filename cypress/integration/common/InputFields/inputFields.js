import {When} from "cypress-cucumber-preprocessor/steps";

When('I type my email in', function () {
    cy.get("#email_create").type(`${this.user.lastName}${this.user.firstName}@${this.user.domain}`)
});

When('I type my password in', function() {
    cy.get("#password").type("abc")
})