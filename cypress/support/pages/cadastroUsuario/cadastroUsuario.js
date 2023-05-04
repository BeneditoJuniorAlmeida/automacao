//ações de interação com a pagina
//Ações: acessar pagina, preencher campos, salvar.
const el = require('./elementos').ELEMENTS

class cadastroUsuario {

    preencherCamposCadastroUsuario(nomeUsuario, email, senha, repitaSenha){
        cy.get(el.inputNomeUsuario).type(nomeUsuario)
        cy.get(el.inputEmail).type(email)
        cy.get(el.inputSenha).type(senha)
        cy.get(el.inputRepitaSenha).type(repitaSenha)       
    }

    criarConta(){
        cy.get(el.btnCriarConta).click()
    }

    voltarPaginaLogin(){
        cy.get(el.btnVoltarPagina).click()
    }
}

export default new cadastroUsuario();