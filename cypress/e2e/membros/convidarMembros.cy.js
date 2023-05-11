/// <reference types="Cypress"/>
import Login from '../../support/pages/login/login.js';
import Logout from '../../support/pages/logout/logout.js';
import Dashboard from '../../support/pages/dashboard/dashboard.js';
import ConvidarMembro from '../../support/pages/membros/convidarMembro.js';

describe('Convidar membro', () => {
    it.only('Convidar membro com e-mail válido e novo no sistema', () => {
        Login.acessarSite()
        Login.preencherCamposLogin("automacaoUser@yahoo.com", "0!Aaaaa")
        Login.Logar();
        //selecionar empresa
        Login.selecionarEmpresa(1)

        cy.intercept('POST', 'https://web.voxdatati.com.br/voxsurvey-product/managerapi/Invitation/').as('postInvite')

        cy.url().should('be.equal', 'https://localhost:8081/main/dashboard');
        Dashboard.acessarMembros()
        cy.url().should('be.equal', 'https://localhost:8081/main/members');
        ConvidarMembro.botaoConvidar()
        ConvidarMembro.preecherCampos('emai@teste.com.br', 'Admin', 'login Name')
        ConvidarMembro.enviar()

        //validar se foi enviado o convite
        cy.wait('@postInvite').then((intercept) => {
            expect(intercept.response.statusCode).to.equal(204)
        })

        ConvidarMembro.barraPesquisar('emai@teste.com.br')
        cy.intercept('GET', 'https://web.voxdatati.com.br/voxsurvey-product/managerapi/InvitationUser/').as('deleteInvite')

        ConvidarMembro.excluirConvite()
        cy.get('span').contains('Sim').should('be.visible').click()

        //validar se o convite foi deletado
        cy.wait('@deleteInvite').then((intercept) => {
            expect(intercept.response.statusCode).to.equal(200)
        })

    })

    it('Convidar membro com e-mail já existente no sistema', () => {

    })

    it('Convidar membro com e-mail que já foi convidado', () => {

    })

    it('Convidar membro com e-mail inválido', () => {

    })

    it('Convidar membro sem preencher o campo de e-mail', () => {

    })

    it('Convidar membro com perfil não definido', () => {

    })

});