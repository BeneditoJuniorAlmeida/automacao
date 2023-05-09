Funcionalidade: Convidar membro

Contexto: Dado que eu estou na página de uma organização

Cenário: Convidar membro com e-mail válido e novo no sistema
E clico no botão "Convidar" 
Então deve abrir o modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail válido
E que não existe no sistema
E seleciono o perfil do membro como "Colaborador"
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então devo ver uma mensagem de confirmação de envio do convite
E o e-mail do convite deve receber um e-mail de convite com um link para a página de cadastro de usuário

Cenário: Convidar membro com e-mail já existente no sistema
E clico no botão "Convidar" 
Então deve abrir um modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail que já existe no sistema
E seleciono o perfil do membro como "Colaborador"
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então devo ver uma mensagem de confirmação de envio do convite
E e o e-mail utilizado no convite deve receber um e-mail de convite com um link para a página de login

Cenário: Convidar membro com e-mail que já foi convidado
E clico no botão "Convidar" 
Então deve abrir o modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail que foi convidado
E seleciono o perfil do membro como "Colaborador"
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então devo ver uma mensagem avisando que já existe um convite para esse e-mail

Cenário: Convidar membro com e-mail inválido
E clico no botão "Convidar" 
Então deve abrir um modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail inválido
E eu seleciono o perfil do membro como "Colaborador"
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então eu devo ver uma mensagem de erro indicando que o e-mail é inválido

Cenário: Convidar membro sem preencher o campo de e-mail
E clico no botão "Convidar" 
Então deve abrir um modal "Convidar membros para a organização"
Quando eu deixo o campo de e-mail em branco
E eu seleciono o perfil do membro como "Colaborador"
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então eu devo ver uma mensagem de erro indicando que o campo de e-mail é obrigatório

somente uma organização
todo usuário é uma organização 
posso ter mias de uma organização



