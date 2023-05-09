Funcionalidade: Convidar membro

Contexto: Dado que eu estou na página lista de membros

Cenário: Convidar membro com e-mail válido e novo no sistema
E clico no botão "Convidar" 
Então deve abrir o modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail válido
E que não existe no sistema
E seleciono o perfil do membro com tipo desejado
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então devo ver uma mensagem de confirmação de envio do convite
E o e-mail utilizado no convite deve receber um e-mail de convite com um link para a página de cadastro de usuário

Cenário: Convidar membro com e-mail já existente no sistema
E clico no botão "Convidar" 
Então deve abrir um modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail que já existe no sistema
E seleciono o perfil do membro com tipo desejado
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então devo ver uma mensagem de confirmação de envio do convite
E e o e-mail utilizado no convite deve receber um e-mail de convite com um link para a página de login

Cenário: Convidar membro com e-mail que já foi convidado
E clico no botão "Convidar" 
Então deve abrir o modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail que foi convidado
E seleciono o perfil do membro com tipo desejado
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então devo ver uma mensagem avisando que já existe um convite para esse e-mail
E o e-mail de convite não pode ser enviando 

Cenário: Convidar membro com e-mail inválido
E clico no botão "Convidar" 
Então deve abrir um modal "Convidar membros para a organização" 
Quando eu preencho o campo de e-mail com um endereço de e-mail inválido
E seleciono o perfil do membro com tipo desejado
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então eu devo ver uma mensagem de erro indicando que o e-mail é inválido
E o sistema não deve permitir enviar o convite

Cenário: Convidar membro sem preencher o campo de e-mail
E clico no botão "Convidar"    
Então deve abrir um modal "Convidar membros para a organização"
Quando eu deixo o campo de e-mail vazio
E seleciono o perfil do membro com tipo desejado
E seleciono uma organização disponivel 
E clico no botão "Enviar"
Então eu devo ver uma mensagem de erro indicando que o campo de e-mail é obrigatório
E o sistema não deve permitir enviar o convite

Cenário: Tentativa de convidar membro com perfil não definido
E clico no botão "Convidar" 
Então deve abrir um modal "Convidar membros para a organização"
Quando eu preencho o campo de e-mail com um e-mail válido
E eu não seleciono um perfil
E eu deixo o campo de organização como "Nenhum"
E clico no botão "Enviar"
Então eu devo ver uma mensagem de erro indicando que o campo perfil é obrigatório
E o sistema não deve permitir enviar o convite





