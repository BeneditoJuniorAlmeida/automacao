Funcionalidade: Testar Bot

Cenário: Botão de "Testar" bloqueado
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
E tenho um bot que nunca foi treinado
Quando vou clicar no botão "Testar"
Então o sistema deve deixar o botão bloqueado

Cenário: Abrir modal para teste de intenções
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
E tenho um bot que já foi treinado
Quando clico no botão "Testar"
Então deve ser carregado um modal para entrar com a intenção que deseja testar

Cenário: Testar intenção
Dado que estou no modal para testar um Bot 
E preencho o campo "Teste a intenção do bot" com texto "teste"
Quando clico no botão "Enviar"
Então o sistema deve exibir  o texto enviado, intenção e pontuação

Cenário: Tentativa de teste intenção sem preencher o campo obrigatório
Dado que estou no modal para testar um Bot 
E preencho o campo "Teste a intenção do bot" vazio
Quando clico no botão "Enviar"
Então o sistema deve bloquear a ação de enviar intenção para teste

