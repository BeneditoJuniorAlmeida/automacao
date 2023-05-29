Funcionalidade: Publicar Bot

Cenário: Botão de "Publicar" bloqueado
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
E tenho um bot que nunca foi treinado
Quando vou clicar no botão "Publicar"
Então o sistema deve deixar o botão bloqueado

Cenário: Publicar bot
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
E tenho um bot que já foi treinado
Quando clico no botão "Publicar"
Então deve ser publicada a ultima versão treinada do bot
E o sistema deve exibir uma mensagem "Aplicação publicada com sucesso!"