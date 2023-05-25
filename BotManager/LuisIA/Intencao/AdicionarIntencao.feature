Funcionalidade: Adicionar intenção

Contexto: 

Cenário: Tentativa de adicionar intenção sem preencher o campo obrigatório
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
Quando clico no botão "Adicionar intenção"
E deixo o campo "Nome da intenção" vazio
Então o botão "Salvar" deve estar desabilitado

Cenário: Adicionar intenção com o campo obrigatório preenchido
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
Quando clico no botão "Adicionar intenção"
E preencho o campo "Nome da intenção" com o valor "Nova intenção"
Então o botão "Salvar" deve estar habilitado

Cenário: Adicionar intenção
Dado que acesso uma aplicação 
E estou dentro da tela de "Intenções"
Quando clico no botão "Adicionar intenção"
E preencho o campo "Nome da intenção" com o valor "Nova intenção"
E clico no botão "Salvar"
Então a intenção "Nova intenção" deve ser salva e carregada na lista de intenções

Cenário: Cancelar adição de intenção
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
Quando clico no botão "Adicionar intenção"
E preencho parcialmente o campo "Nome da intenção" com o valor "Nova intenção"
E decido cancelar a adição da intenção
Então o formulário de adição de intenção deve ser fechado
E a intenção "Nova intenção" não deve ser salva
E a lista de intenções deve permanecer sem alterações