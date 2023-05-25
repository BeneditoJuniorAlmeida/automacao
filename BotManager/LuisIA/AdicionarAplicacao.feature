Funcionalidade: Adicionar aplicação

Cenário: Adicionar aplicação
Dado que estou logado como administrador no sistema 
E acesso o menu "Chatbot Studio"
E seleciono o menu lateral "Luis IA"
E estou na tela "Aplicações"
Quando clico no botão "Adicionar aplicação"
Então deve abrir uma tela na lateral direita do sistema para inserir nome e descrição da aplicação

Cenário: Adicionar aplicação com nome e descrição válidos
Dado que estou na página de adicionar aplicação
Quando preencho o campo nome com "Minha Aplicação"
E preencho o campo descrição com "Uma aplicação de teste"
E clico no botão "Salvar"
Então a aplicação "Minha Aplicação" é adicionada com sucesso
E o sistema deve exibir uma mensagem indicando que a aplicação foi cadastrada com sucesso
E o sistema deve exibir a aplicação cadastrada

Cenário: Adicionar aplicação com nome vazio
Dado que estou na página de adicionar aplicação
Quando deixo o campo nome vazio
E preencho o campo descrição com "Uma aplicação de teste"
E clico no botão "Salvar"
Então vejo uma mensagem de erro informando que o campo nome é obrigatório

Cenário: Adicionar aplicação sem preencher descrição
Dado que estou na página de adicionar aplicação
Quando preencho o campo nome com "Minha Aplicação"
E deixo o campo descrição vazio
E clico no botão salvar
Então a aplicação "Minha Aplicação" é adicionada com sucesso, sem descrição
E o sistema deve exibir uma mensagem indicando que a aplicação foi cadastrada com sucesso

Cenário: Cancelar a adição de uma aplicação
Dado que estou na página de adicionar aplicação
Quando preencho o campo nome com "Minha Aplicação"
E preencho o campo descrição com "Uma aplicação de teste"
E clico no botão "Cancelar"
Então volto para a lista de aplicações sem adicionar uma nova aplicação