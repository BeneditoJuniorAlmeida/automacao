Funcionalidade: Editar aplicação

Cenário: Editar aplicação com nome e descrição válidos
Dado que estou na página de edição da aplicação "Minha Aplicação"
Quando modifico o campo nome para "Aplicação Modificada"
E modifico o campo descrição para "Uma aplicação modificada de teste"
E clico no botão "Salvar"
Então a aplicação "Minha Aplicação" é atualizada com sucesso, com o nome "Aplicação Modificada" 
E a descrição "Uma aplicação modificada de teste"

Cenário: Editar aplicação com nome vazio
Dado que estou na página de edição da aplicação "Minha Aplicação"
Quando deixo o campo nome vazio
E modifico o campo descrição para "Uma aplicação modificada de teste"
E clico no botão "Salvar"
Então vejo uma mensagem de erro informando que o campo nome é obrigatório

Cenário: Editar aplicação sem modificar a descrição
Dado que estou na página de edição da aplicação "Minha Aplicação"
Quando modifico o campo nome para "Aplicação Modificada"
E deixo o campo descrição com o valor atual
E clico no botão "Salvar"
Então a aplicação "Minha Aplicação" é atualizada com sucesso, com o nome "Aplicação Modificada" mantendo a descrição atual

Cenário: Cancelar a edição de uma aplicação
Dado que estou na página de edição da aplicação "Minha Aplicação"
Quando modifico o campo nome para "Aplicação Modificada"
E modifico o campo descrição para "Uma aplicação modificada de teste"
E clico no botão cancelar
Então volto para a visualização da aplicação "Minha Aplicação" sem realizar alterações




