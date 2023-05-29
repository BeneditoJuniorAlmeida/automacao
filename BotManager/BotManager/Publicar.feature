Funcionalidade: Publicar Bot

Cenário: Publicar um bot com sucesso
Dado que estou logado como um administrador do sistema
E um bot já foi criado e está pronto para ser publicado
Quando eu acessar a página de administração do bot
E selecionar o bot que desejo publicar
E clicar no botão "Publicar"
Então o sistema deve exibir uma tela de confirmação de publicação
Quando eu confirmar a publicação
Então o sistema deve exibir uma mensagem de confirmação de publicação bem-sucedida
E o bot deve ficar disponível para interação pelos usuários

Cenário: Tentativa de publicar um bot com informações inválidas
Dado que estou logado como um administrador do sistema
E um bot já foi criado, mas possui informações inválidas
Quando eu acessar a página de administração do bot
E selecionar o bot que desejo publicar
E clicar no botão "Publicar"
Então o sistema deve exibir uma tela de confirmação de publicação
Quando eu confirmar a publicação
Então o sistema deve exibir uma mensagem de erro informando que o bot possui informações inválidas e não pode ser publicado

Cenário: Cancelar a publicação de um bot
Dado que estou logado como um administrador do sistema
E um bot já foi criado e está pronto para ser publicado
Quando eu acessar a página de administração do bot
E selecionar o bot que desejo publicar
E clicar no botão "Publicar"
Então o sistema deve exibir uma tela de confirmação de publicação
Quando eu cancelar a publicação
Então o sistema deve retornar à página de administração do bot
E não deve haver nenhuma alteração no estado de publicação do bot

Cenário: Tentativa de publicar um bot que já está publicado
Dado que estou logado como um administrador do sistema
E um bot já foi criado e está publicado
Quando eu acessar a página de administração do bot
E selecionar o bot que desejo publicar
E clicar no botão "Publicar"
Então o sistema deve exibir uma mensagem informando que o bot já está publicado