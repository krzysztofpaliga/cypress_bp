import { When } from "cypress-cucumber-preprocessor/steps"
import { Then } from "cypress-cucumber-preprocessor/steps"

let emailAddress

Given('I visit 10minutemail.net', function() {
    cy.visit("https://10minutemail.net")
})

When('I read the email address', function() {
    cy.get(".mailtext").then(($input) => {
        emailAddress = $input.val()
        console.log(emailAddress)

    })
})

Then('I remember the email address', function() {
    cy.writeFile("10minutemail.txt", emailAddress)
})

When('I type the 10minutemail email in', function() {
    cy.readFile("10minutemail.txt").then(($emailAddress) => {
        cy.get("#email").type($emailAddress)
    })
})