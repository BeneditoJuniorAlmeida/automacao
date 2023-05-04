//ações de interação com a pagina
//Ações: acessar pagina, preencher campos, salvar.
const el = require('./elementos').ELEMENTS

class Logout {

    btnProfile() {
        //preencher os campos
        cy.get(el.btnProfile).click()
    }

    btnSair() {
        //clicar para cadastrar
        cy.get(el.btnProfileExit).click()
    }

    btnSim() {
        //clicar para cadastrar
        cy.get(el.btnSim).click()
    }
    
    btnNao() {
        //clicar para cadastrar
        cy.get(el.btnNao).click()
    }
}

export default new Logout();