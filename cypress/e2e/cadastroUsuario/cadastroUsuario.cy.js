/// <reference types="Cypress"/>
var faker = require('faker-br');
import Login from '../../support/pages/login/login.js';
import NovoUsuario from '../../support/pages/cadastroUsuario/cadastroUsuario.js'

describe('Cadastro de usuário', () => {
    it('Cadastro de usuário com sucesso', () => {
        Login.acessarSite();
        Login.RegistrarUsuario();
        let email = faker.internet.email()      
        cy.url().should('be.equal', 'https://web.voxdatati.com.br/voxsurvey-product/Manager/register')
        cy.wait(1000)

        NovoUsuario.preencherCamposCadastroUsuario('login Name', email, '0!Aaaaa', '0!Aaaaa')

        NovoUsuario.criarConta()   
        
        cy.get('#swal2-title').should(($alert) => {
            alert = $alert.text()
            expect(alert).equal('Conta criada com sucesso')
          });
        
        NovoUsuario.fecharModalSucess()
        
        cy.url().should('be.equal', 'https://web.voxdatati.com.br/voxsurvey-product/Manager/')
        
    });

});

