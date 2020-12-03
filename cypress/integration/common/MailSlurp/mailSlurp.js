import { Given } from "cypress-cucumber-preprocessor/steps"
import { When } from "cypress-cucumber-preprocessor/steps"
import { Then } from "cypress-cucumber-preprocessor/steps"
import { Before } from "cypress-cucumber-preprocessor/steps"
import { After } from "cypress-cucumber-preprocessor/steps"
import { MailSlurp } from "mailslurp-client"

/* mailSlurp free account has a strict limitation on number of inboxes */
let myinbox
Before({tags: "@mailSlurp"}, () => {
    // cy.createInbox().then((inbox) => {
    //     assert.isDefined(inbox)
    //     myinbox = inbox
    // })
})

When('I type a mailSlurp email in', function() {
    cy.get("#email").type(myinbox.emailAddress)
})