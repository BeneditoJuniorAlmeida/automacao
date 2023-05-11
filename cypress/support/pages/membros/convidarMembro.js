//ações de interação com a pagina
//Ações: acessar pagina, preencher campos, salvar.
const el = require('./convidarMembroElementos').ELEMENTS

class ConvidarMembros {

    barraPesquisar(pesquisa){
        cy.get(el.inputPesquisa).type(pesquisa);
    }

    botaoConvidar(){
        cy.get(el.botaoConvidar).click()
    }

    preecherCampos(email, perfil, organizacao){
        cy.get(el.modalInputEmail).type(email).type('{enter}').blur()      
        cy.get(el.modalSelectPerfil).click()
        cy.contains(perfil).should('be.visible').click()
        cy.get(el.modalSelectOrganizacao).click()
        cy.get('span').contains(organizacao).should('be.visible').click()
    }

    enviar(){
        cy.get(el.botaoEnviar).click()
    }

    cancelar(){
        cy.get(el.botaoCancelar).click()
    }

    excluirConvite(){
        cy.get(el.botaoExcluirSolicitacao).click()
        
    }
}

export default new ConvidarMembros()