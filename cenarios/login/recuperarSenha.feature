
Cenário: Recuperar senha com sucesso
Dado que estou na página de recuperação de senha
E preencho o campo de e-mail com um endereço de e-mail válido
Quando clico no botão "Enviar E-mail"
Então uma mensagem de sucesso é exibida informando que um e-mail foi enviado para o endereço fornecido

Cenário: Tentativa de recuperação de senha sem preencher o campo de e-mail
Dado que estou na página de recuperação de senha
E o campo de e-mail está vazio
Quando clico no botão "Enviar E-mail"
Então uma mensagem de erro é exibida informando que o campo de e-mail é obrigatório

Cenário: Tentativa de recuperação de senha com um endereço de e-mail inválido
Dado que estou na página de recuperação de senha
E preencho o campo de e-mail com um endereço de e-mail inválido (sem o formato correto)
Quando clico no botão "Enviar E-mail"
Então uma mensagem de erro é exibida informando que o endereço de e-mail fornecido é inválido

Cenário: Cancelar a recuperação de senha
Dado que estou na página de recuperação de senha
Quando clico no botão "Cancelar"
Então a tela de recuperação de senha é fechada

Cenário: Fechar a tela de recuperação de senha
Dado que estou na página de recuperação de senha
Quando clico no botão de fechar tela
Então a tela de recuperação de senha é fechada