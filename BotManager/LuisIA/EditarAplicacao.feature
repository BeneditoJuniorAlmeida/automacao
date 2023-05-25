Funcionalidade: Editar aplicação

Cenário: Editar aplicação alterando apenas a descrição
Dado que estou na página de edição de uma aplicação
E o campo nome está bloqueado e preenchido com "Minha Aplicação"
Quando modifico o campo descrição para "Uma descrição atualizada"
E clico no botão salvar
Então a aplicação "Minha Aplicação" é atualizada com sucesso, mantendo o mesmo nome e com a descrição alterada para "Uma descrição atualizada"
E o sistema apresenta uma mensagem de sucesso

Cenário: Tentar editar o campo nome
Dado que estou na página de edição de uma aplicação
E o campo nome está bloqueado e preenchido com "Minha Aplicação"
Quando tento modificar o campo nome para "Nova Aplicação"
Então o campo deve estar bloqueado para edição

Cenário: Editar aplicação sem modificar a descrição
Dado que estou na página de edição de uma aplicação
E o campo nome está bloqueado e preenchido com "Minha Aplicação"
Quando clico no botão salvar sem modificar o campo descrição
Então a aplicação "Minha Aplicação" é atualizada com sucesso, mantendo o mesmo nome e a mesma descrição




