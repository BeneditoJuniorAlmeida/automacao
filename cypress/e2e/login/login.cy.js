/// <reference types="Cypress"/>

import Login from '../../support/pages/login/login.js';

describe('Login', () => {
  it('Login bem-sucedido com credenciais corretas', () => {

    Login.acessarSite() // acessar site 
    Login.preencherCamposLogin("teste3@gmail.com", "aaA@1A") //preencher campos

    //criar uma rota e atribuir status code para uma variavel temporaria
    cy.intercept('POST', 'https://web.voxdatati.com.br/voxsurvey-product/managerapi/Dashboard/', (req) => {
      req.reply({
        status: 200,
      })
    }).as('postLogin')

    //Clicar para salvar
    Login.Logar()

    //esperar para fazer validação do status da requisição feita ao clicar para salvar
    cy.wait('@postLogin').its('response.statusCode').should('eq', 200)

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