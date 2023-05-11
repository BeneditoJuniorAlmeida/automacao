//ações de interação com a pagina
//Ações: acessar pagina, preencher campos, salvar.
const el = require('./elementos').ELEMENTS

class Login {
  acessarSite() {
    // cy.visit('https://web.voxdatati.com.br/voxsurvey-product/Manager/')
    cy.visit('https://localhost:8081/')
  }

  preencherCamposLogin(nome = "", senha = "") {
    //preencher os campos
    cy.get(el.usuario).type(nome)
    cy.get(el.senha).type(senha)
  }

  preencherNome(nome) {
    cy.get(el.usuario).type(nome)
  }

  Logar() {
    //clicar para cadastrar
    cy.get(el.btnLogar).click()
  }

  RegistrarUsuario() {
    //clicar para cadastrar
    cy.get(el.btnRegistrar).click()
  }

  selecionarEmpresa(id_empresa = ""){
    cy.get(`[data-test=card-company-item-${id_empresa}]`).click()
      
  }
}

export default new Login();