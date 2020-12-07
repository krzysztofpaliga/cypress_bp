// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add("login", (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add("drag", { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add("dismiss", { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will y.createInbox().then((inbox) => {
//     console.log(inbox);
//     // { id: '...', emailAddress: '...' }
// });

// cy.waitForLatestEmail(inbox.id).then((email) => {
//     console.log(email);
//     // { subject: '...', body: '...' }
// });overwrite an existing command --
// Cypress.Commands.overwrite("visit", (originalFn, url, options) => { ... })

const {MailSlurp} = require("mailslurp-client");

const apiKey = "79e47a2be19738c4604c891fbd5d06a9892462bd7f47ea5e79884ab510146bf2";
const mailslurp = new MailSlurp({apiKey});

Cypress.Commands.add("createInbox", () => {
    return mailslurp.createInbox();
});

Cypress.Commands.add("waitForLatestEmail", (inboxId) => {
    return mailslurp.waitForLatestEmail(inboxId);
});

Cypress.Commands.add("login", function () {
    // cy.readFile("password.json").then(($user) => {
    //     loginUser = $user
    // })
    cy.fixture("password.json").then((loginUser) => {
        cy.get("button[data-role=header-dropdown-toggle]").last().click()
        cy.get("a[data-analytics-click-value=login-button]").click()
        cy.url().should("contain", "login/form")
        cy.get("#username").type(loginUser.email)
        cy.get("#password").type(loginUser.password)
        cy.get("button#login-button").click()
        cy.url().should("contain", "dwustopniowe-logowanie")
        cy.get("a.msts_n7:nth-child(1)").click()
    })
})
