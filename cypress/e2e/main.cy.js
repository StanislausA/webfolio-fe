/// <reference types="cypress" />

describe("example to-do app", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it("should be initial render", function () {
    cy.get(".counter")
      .should("have.text", "visitor count: Initializing instance...");
  });

  it("should render visitor count number", function () {
    cy.wait(3000);
    cy.get(".counter")
      .then($div=> {
        const text = $div.text();
        const int = parseCounterString(text, true);
        cy.wrap({ int })
          .its("int")
          .should("be.true");
      });
  });

  it("should increment count on reload", function () {
    let first;
    cy.wait(3000);
    cy.get(".counter")
      .invoke('text')
      .then((text) => {
        first = parseCounterString(text);
        cy.reload();
      })
      .then(() => {
        cy.wait(3000);
        cy.get(".counter")
          .invoke('text')
          .then((text) => {
            const second = parseCounterString(text);
            expect(second).to.be.greaterThan(first);
          });
      });
  });
});

function parseCounterString(text, isNum = false) {
    const int = parseInt(text.split(": ").at(-1));
    if (isNum) return Number.isInteger(int);
    else return int;
}
