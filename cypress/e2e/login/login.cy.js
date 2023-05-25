/// <reference types="Cypress"/>

import Login from '../../support/pages/login/login.js';

describe('Login', () => {
  it('Login bem-sucedido com credenciais corretas', () => {

    Login.acessarSite() // acessar site 
    Login.preencherCamposLogin("automacaoUser@yahoo.com", "0!Aaaaa") //preencher campos

    cy.intercept('POST', 'https://web.voxdatati.com.br/voxsurvey-product/managerapi/Auth/Login').as('postLogin')
    //Clicar para salvar
    Login.Logar()

    cy.url().should('be.equal', 'https://web.voxdatati.com.br/voxsurvey-product/Manager/')

    //validar se o convite foi deletado
    cy.wait('@postLogin').then((intercept) => {
      expect(intercept.response.statusCode).to.equal(200)
    })

  })

  it('Tentativa de login com nome de usuário ou senha incorreta', () => {

    Login.acessarSite();
    Login.preencherCamposLogin("LoginIncorreto", "senhaIncorreta")

    Login.Logar()

    cy.get('.col-12 > .row > span').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Não foi realizar o loginObject reference not set to an instance of an object.')
    });

  })

  it('Tentativa de login com credenciais em branco', () => {

    Login.acessarSite();
    cy.get('[data-test=input-login-password]').first().focus() // definir foco no campo senha
    Login.Logar()

    //validar usuario
    cy.get('.q-field__messages > div').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Este campo é obrigatório')

    });

    Login.preencherNome('email@.com.br')
    Login.Logar()

    //validar senha
    cy.get('.q-field__messages > div').should(($alert) => {
      alert = $alert.text()
      expect(alert).equal('Este campo é obrigatório')
    });
  })


});