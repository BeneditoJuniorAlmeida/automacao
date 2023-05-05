/// <reference types="Cypress"/>

import Login from '../../support/pages/login/login.js';

describe('Login', () => {
  it('Login bem-sucedido com credenciais corretas', () => {

    Login.acessarSite() // acessar site 
    Login.preencherCamposLogin("automacaoUser@yahoo.com", "0!Aaaaa") //preencher campos


    //Clicar para salvar
    Login.Logar()

    cy.url().should('be.equal', 'https://web.voxdatati.com.br/voxsurvey-product/Manager/main/dashboard')

  })

  it('Tentativa de login com nome de usuário ou senha incorreta', () => {

    Login.acessarSite();
    Login.preencherCamposLogin("LoginIncorreto", "senhaIncorreta")

    Login.Logar()

    cy.get(':nth-child(4) > .row > span').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Não foi realizar o loginCredenciais inválidas')
    });

  })

  it('Tentativa de login com credenciais em branco', () => {

    Login.acessarSite();
    cy.get('[data-test=input-login-password]').first().focus() // definir foco no campo senha
    Login.Logar()

    //validar usuario
    cy.get(':nth-child(2) > .q-field > .q-field__inner > .q-field__bottom > .q-field__messages > div').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Campo obrigatório')

    });

    Login.preencherNome('email@.com.br')
    Login.Logar()

    //validar senha
    cy.get(':nth-child(3) > .q-field > .q-field__inner > .q-field__bottom > .q-field__messages > div').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Campo obrigatório')
    });
  })


});