/// <reference types="Cypress"/>
import Login from '../../support/pages/login/login.js';
import Logout from '../../support/pages/logout/logout.js';

describe('Logout', () => {
    it('Logout bem-sucedido', () => {
        // acessar site 
        Login.acessarSite()
        Login.preencherCamposLogin("automacaoUser@yahoo.com", "0!Aaaaa") //preencher campos
        Login.Logar()

        cy.get('.seletor-elemento').then(($elemento) => {
            if ($elemento.text() === 'Valor esperado') {
              // Realize ações ou asserções se a condição for verdadeira
              cy.log('Condição verdadeira');
              // Outros comandos...
            } else {
              // Realize ações ou asserções se a condição for falsa
              cy.log('Condição falsa');
              // Outros comandos...
            }
          });
        Login.selecionarEmpresa(1)

        //criar uma rota e atribuir status code para uma variavel temporaria
        cy.intercept('PUT', 'https://web.voxdatati.com.br//voxsurvey-product/managerapi/Auth/user/session', (req) => {
            req.reply({
                status: 200,
            })
        }).as('putLogout')

        Logout.btnProfile()
        Logout.btnSair()

        //esperar para fazer validação do status da requisição feita ao clicar para salvar
        cy.wait('@putLogout').its('response.statusCode').should('eq', 200)

    })
});