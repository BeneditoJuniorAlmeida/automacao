/// <reference types="Cypress"/>

import Login from '../../support/pages/login/login.js';

describe('Login', () => {
  it('Login bem-sucedido com credenciais corretas', () => {

    Login.acessarSite() // acessar site 
    Login.preencherCamposLogin("automacaoUser@yahoo.com", "0!Aaaaa") //preencher campos

    //Clicar para salvar
    Login.Logar()

    cy.get('[data-test=card-company-item-0]').click();

    cy.url().should('be.equal', 'https://localhost:8081/main/dashboard')
    

  })

  it.only('Tentativa de login com nome de usuário ou senha incorreta', () => {

    Login.acessarSite();
    Login.preencherCamposLogin("LoginIncorreto", "senhaIncorreta")

    Login.Logar()

    cy.get(':nth-child(4) > .row > span').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Não foi realizar o loginObject reference not set to an instance of an object.')
    });

  })

  it.only('Tentativa de login com credenciais em branco', () => {

    Login.acessarSite();
    cy.get('[data-test=input-login-password]').first().focus() // definir foco no campo senha
    Login.Logar()

    //validar usuario
    cy.get(':nth-child(2) > .q-field > .q-field__inner > .q-field__bottom > .q-field__messages > div').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Este campo é obrigatório')

    });

    Login.preencherNome('email@.com.br')
    Login.Logar()

    //validar senha
    cy.get('#q-app > div > div > main > div > div.col.full-height > div > form > div > div > div > div:nth-child(3) > label > div > div.q-field__bottom.row.items-start.q-field__bottom--animated > div > div').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Este campo é obrigatório')
    });
  })


});