import { parseCounterString } from "./utility";


Cypress.Commands.add("getCounterValue", (selector) => {
    cy.wait(3000);
    cy.get(selector)
      .invoke("text")
      .then(text => parseCounterString(text));
});