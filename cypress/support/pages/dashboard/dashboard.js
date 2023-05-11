//ações de interação com a pagina
//Ações: acessar pagina, preencher campos, salvar.
const el = require('./elementos').ELEMENTS

class Dashboard {

    acessarRelatorios(){
        cy.get(el.menuRelatorios).click()
    }

    acessarCampanha(){
        cy.get(el.menuCampanha).click()
    }

    acessarRegras(){
        cy.get(el.menuRegras).click()
    }

    acessarVariaveis(){
        cy.get(el.menuVariaveis).click()
    }

    acessarOrganizacoes(){
        cy.get(el.menuOrganizacoes).click()
    }

    acessarMembros(){
        cy.get(el.menuMembros).click()
    }
}

export default new Dashboard();