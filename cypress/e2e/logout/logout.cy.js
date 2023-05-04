/// <reference types="Cypress"/>
import Login from '../../support/pages/login/login.js';
import Logout from '../../support/pages/logout/logout.js';

describe('Teste logout', () => {
    it('Logout bem-sucedido', () => {
        // acessar site 
        Login.acessarSite()
        Login.preencherCamposLogin("teste3@gmail.com", "aaA@1A") //preencher campos
        Login.Logar()

        //criar uma rota e atribuir status code para uma variavel temporaria
        cy.intercept('PUT', 'https://web.voxdatati.com.br//voxsurvey-product/managerapi/Auth/user/session', (req) => {
            req.reply({
                status: 200,
            })
        }).as('putLogout')

        Logout.btnProfile()
        Logout.btnSair()
        Logout.btnSim()

        //esperar para fazer validação do status da requisição feita ao clicar para salvar
        cy.wait('@putLogout').its('response.statusCode').should('eq', 200)

    })

    it('Logout cancelado', () => {
        Login.acessarSite() // acessar site 
        Login.preencherCamposLogin("teste3@gmail.com", "aaA@1A") //preencher campos
        Login.Logar()

        Logout.btnProfile()
        Logout.btnSair()
        Logout.btnNao()

        //Validação do teste
        cy.get('.q-breadcrumbs__el').should(($alert) => {
            alert = $alert.text()
            expect(alert).equal('Dashboard da sessão')
        });
    })

});