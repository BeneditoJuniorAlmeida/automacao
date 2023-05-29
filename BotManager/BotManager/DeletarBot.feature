Funcionalidade: Deletar Bot

Cenário: Deletar um bot não publicado com sucesso
Dado que estou logado como um administrador do sistema
E um bot foi criado, mas ainda não foi publicado
Quando eu acessar a página de administração do bot
E selecionar o bot que desejo deletar
E clicar no botão "Deletar"
Então o sistema deve exibir uma tela de confirmação de exclusão do bot
Quando eu confirmar a exclusão
Então o sistema deve exibir uma mensagem de confirmação de exclusão bem-sucedida
E o bot deve ser removido permanentemente do sistema

Cenário: Tentativa de deletar um bot publicado
Dado que estou logado como um administrador do sistema
E um bot foi criado e já está publicado
Quando eu acessar a página de administração do bot
E selecionar o bot que desejo deletar
E clicar no botão "Deletar"
Então o sistema deve exibir uma mensagem informando que não é possível deletar um bot que já foi publicado
E o bot não deve ser removido do sistema

